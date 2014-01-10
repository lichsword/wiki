.class final Lorg/usertrack/android/library/b/d$a;
.super Ljava/lang/Object;
.source "TransactionXMLFile.java"

# interfaces
.implements Lorg/usertrack/android/library/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/usertrack/android/library/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/usertrack/android/library/b/d$a$a;
    }
.end annotation


# static fields
.field private static final jB:Ljava/lang/Object;


# instance fields
.field private jA:Z

.field private jC:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lorg/usertrack/android/library/b/b$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final jw:Ljava/io/File;

.field private final jx:Ljava/io/File;

.field private final jy:I

.field private jz:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/usertrack/android/library/b/d$a;->jB:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 1
    .parameter "file"
    .parameter "mode"
    .parameter "initialContents"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/usertrack/android/library/b/d$a;->jA:Z

    .line 126
    iput-object p1, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    .line 127
    invoke-static {p1}, Lorg/usertrack/android/library/b/d;->d(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/usertrack/android/library/b/d$a;->jx:Ljava/io/File;

    .line 128
    iput p2, p0, Lorg/usertrack/android/library/b/d$a;->jy:I

    .line 129
    if-eqz p3, :cond_0

    .end local p3
    :goto_0
    iput-object p3, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lorg/usertrack/android/library/b/d$a;->jC:Ljava/util/WeakHashMap;

    .line 131
    return-void

    .line 129
    .restart local p3
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    .end local p3
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method static synthetic a(Lorg/usertrack/android/library/b/d$a;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a;->jC:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic b(Lorg/usertrack/android/library/b/d$a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    return-object v0
.end method

.method private be()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jx:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    iget-object v3, p0, Lorg/usertrack/android/library/b/d$a;->jx:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    :cond_0
    :goto_0
    return v1

    .line 367
    :cond_1
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 377
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    invoke-direct {p0, v2}, Lorg/usertrack/android/library/b/d$a;->c(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 378
    .local v0, str:Ljava/io/FileOutputStream;
    if-eqz v0, :cond_0

    .line 381
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    invoke-static {v2, v0}, Lorg/usertrack/android/library/b/e;->a(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 382
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 385
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jx:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    const/4 v1, 0x1

    goto :goto_0

    .line 388
    .end local v0           #str:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 391
    :goto_1
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    iget-object v2, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 387
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private c(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 5
    .parameter "file"

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 344
    .local v2, str:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #str:Ljava/io/FileOutputStream;
    .local v3, str:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #str:Ljava/io/FileOutputStream;
    .restart local v2       #str:Ljava/io/FileOutputStream;
    :goto_0
    move-object v4, v2

    .line 355
    :goto_1
    return-object v4

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 347
    .local v1, parent:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_0

    .line 348
    const/4 v4, 0x0

    goto :goto_1

    .line 351
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2           #str:Ljava/io/FileOutputStream;
    .restart local v3       #str:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 352
    .end local v3           #str:Ljava/io/FileOutputStream;
    .restart local v2       #str:Ljava/io/FileOutputStream;
    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method static synthetic c(Lorg/usertrack/android/library/b/d$a;)Z
    .locals 1
    .parameter

    .prologue
    .line 358
    invoke-direct {p0}, Lorg/usertrack/android/library/b/d$a;->be()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 1
    .parameter "newContents"

    .prologue
    .line 156
    if-eqz p1, :cond_0

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iput-object p1, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    .line 157
    monitor-exit p0

    .line 161
    :cond_0
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public aW()Z
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/usertrack/android/library/b/d$a;->jw:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, fTmp:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const/4 v1, 0x1

    .line 140
    .end local v0           #fTmp:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bd()Z
    .locals 1

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lorg/usertrack/android/library/b/d$a;->jA:Z

    monitor-exit p0

    return v0

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public en()Lorg/usertrack/android/library/b/b$a;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lorg/usertrack/android/library/b/d$a$a;

    invoke-direct {v0, p0}, Lorg/usertrack/android/library/b/d$a$a;-><init>(Lorg/usertrack/android/library/b/d$a;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 178
    monitor-enter p0

    .line 180
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v1, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 201
    .local v0, v:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2
    :cond_0
    monitor-exit p0

    return-wide p2

    .line 199
    .end local v0           #v:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v1, p0, Lorg/usertrack/android/library/b/d$a;->jz:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 187
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #v:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #v:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0

    .line 185
    .end local v0           #v:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public h(Z)V
    .locals 1
    .parameter "hasChange"

    .prologue
    .line 144
    monitor-enter p0

    .line 145
    :try_start_0
    iput-boolean p1, p0, Lorg/usertrack/android/library/b/d$a;->jA:Z

    .line 144
    monitor-exit p0

    .line 147
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
