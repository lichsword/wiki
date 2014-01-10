.class public Lcom/alibaba/adi/collie/ui/weather/DBManager;
.super Ljava/lang/Object;
.source "DBManager.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "city.db"

.field private static DB_PATH:Ljava/lang/String;


# instance fields
.field private final BUFFER_SIZE:I

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private file:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->DB_PATH:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x400

    iput v0, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->BUFFER_SIZE:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->file:Ljava/io/File;

    .line 16
    return-void
.end method

.method public static deleteOldCityDB()V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/adi/collie/ui/weather/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "city.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 72
    :cond_0
    return-void
.end method

.method private openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 8
    .parameter "dbfile"

    .prologue
    const/4 v5, 0x0

    .line 35
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->file:Ljava/io/File;

    .line 36
    iget-object v6, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 37
    sget-object v6, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v6}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 38
    const/high16 v7, 0x7f06

    .line 37
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 39
    .local v4, is:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 40
    .local v3, fos:Ljava/io/FileOutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 41
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 42
    .local v1, count:I
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-gtz v1, :cond_1

    .line 47
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 48
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 50
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :cond_0
    const/4 v6, 0x0

    invoke-static {p1, v6}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    iget-object v5, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    :goto_1
    return-object v5

    .line 43
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 45
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 52
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .end local v4           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 53
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 54
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 55
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 56
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 57
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public closeDatabase()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public openDatabase()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/alibaba/adi/collie/ui/weather/DBManager;->DB_PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "city.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-direct {p0, v0}, Lcom/alibaba/adi/collie/ui/weather/DBManager;->openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/weather/DBManager;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    return-void
.end method
