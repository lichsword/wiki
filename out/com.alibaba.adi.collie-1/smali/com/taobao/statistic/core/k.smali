.class public Lcom/taobao/statistic/core/k;
.super Ljava/lang/Object;
.source "SOManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/statistic/core/k$a;
    }
.end annotation


# static fields
.field private static final lS:[Ljava/lang/String;

.field private static final lT:[J


# instance fields
.field private lU:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 19
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "libndk-tbsengine.so"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "libndk-tbsengine-2.0.so"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "libndk-tbsengine-3.0.so"

    aput-object v2, v0, v1

    const-string v1, "libndk-tbsengine-4.0.1.so"

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/statistic/core/k;->lS:[Ljava/lang/String;

    .line 22
    new-array v0, v3, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/taobao/statistic/core/k;->lT:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0xebt 0x78t 0x49t 0xat 0x0t 0x0t 0x0t 0x0t
        0x2bt 0xa3t 0x12t 0xa9t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x88t 0x5at 0xe8t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "aContext"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/taobao/statistic/core/k;->mContext:Landroid/content/Context;

    .line 25
    iput-object v1, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    .line 28
    iput-object p1, p0, Lcom/taobao/statistic/core/k;->mContext:Landroid/content/Context;

    .line 31
    :try_start_0
    iget-object v1, p0, Lcom/taobao/statistic/core/k;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "build"
    .parameter "fieldName"

    .prologue
    .line 99
    :try_start_0
    const-class v2, Landroid/os/Build;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 100
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    .end local v1           #field:Ljava/lang/reflect/Field;
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "Unknown"

    goto :goto_0
.end method

.method private a(Ljava/io/FileInputStream;)Z
    .locals 3
    .parameter "fis"

    .prologue
    .line 61
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    if-lez v1, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    .line 63
    .local v0, data:[B
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 64
    invoke-direct {p0, v0}, Lcom/taobao/statistic/core/k;->h([B)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 68
    if-eqz p1, :cond_0

    .line 70
    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :goto_0
    const/4 p1, 0x0

    .line 76
    .end local v0           #data:[B
    :cond_0
    :goto_1
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    .line 70
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    :goto_2
    const/4 p1, 0x0

    .line 76
    :cond_2
    :goto_3
    const/4 v1, 0x0

    goto :goto_1

    .line 66
    :catch_0
    move-exception v1

    .line 68
    if-eqz p1, :cond_2

    .line 70
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 73
    :goto_4
    const/4 p1, 0x0

    goto :goto_3

    .line 68
    :catchall_0
    move-exception v1

    if-eqz p1, :cond_3

    .line 70
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 73
    :goto_5
    const/4 p1, 0x0

    :cond_3
    throw v1

    .line 71
    .restart local v0       #data:[B
    :catch_1
    move-exception v2

    goto :goto_0

    .end local v0           #data:[B
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_5
.end method

.method private ca()Ljava/io/File;
    .locals 12

    .prologue
    const/4 v7, 0x0

    const/4 v11, 0x2

    .line 111
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    if-eqz v8, :cond_8

    .line 112
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 114
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 115
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    sget-object v8, Lcom/taobao/statistic/core/k;->lS:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 116
    sget-object v8, Lcom/taobao/statistic/core/k;->lS:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-static {v8}, Lorg/usertrack/android/utils/o;->ax(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 117
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    sget-object v9, Lcom/taobao/statistic/core/k;->lS:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    .local v5, oFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 115
    .end local v5           #oFile:Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v3           #i:I
    :cond_1
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 127
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 129
    :cond_2
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 130
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    const-string v9, "libndkutils.so"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    .local v4, libFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v8}, Lcom/taobao/statistic/core/k;->a(Ljava/io/FileInputStream;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 134
    const/4 v8, 0x2

    const-string v9, "SOManager(LoadFile)"

    const-string v10, "ValidateAdler32 libFile success."

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 192
    .end local v4           #libFile:Ljava/io/File;
    :goto_1
    return-object v4

    .line 138
    .restart local v4       #libFile:Ljava/io/File;
    :cond_3
    const/4 v8, 0x2

    const-string v9, "SOManager(LoadFile)"

    const-string v10, "ValidateAdler32 exist libFile fail.We will re copy one."

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    .line 144
    :goto_2
    new-instance v8, Landroid/os/Build;

    invoke-direct {v8}, Landroid/os/Build;-><init>()V

    const-string v9, "CPU_ABI"

    invoke-static {v8, v9}, Lcom/taobao/statistic/core/k;->a(Landroid/os/Build;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, abi:Ljava/lang/String;
    invoke-static {v0}, Lcom/taobao/statistic/core/j;->v(Ljava/lang/String;)[B

    move-result-object v6

    .line 146
    .local v6, sodata:[B
    if-eqz v6, :cond_a

    .line 147
    invoke-direct {p0, v6}, Lcom/taobao/statistic/core/k;->h([B)Z

    move-result v8

    if-nez v8, :cond_4

    .line 148
    const-string v8, "SOManager(LoadFile)"

    const-string v9, "ValidateAdler32 sodata bytes fail"

    invoke-static {v11, v8, v9}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    move-object v4, v7

    .line 150
    goto :goto_1

    .line 152
    :cond_4
    new-instance v4, Ljava/io/File;

    .end local v4           #libFile:Ljava/io/File;
    iget-object v8, p0, Lcom/taobao/statistic/core/k;->lU:Ljava/io/File;

    const-string v9, "libndkutils.so"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 153
    .restart local v4       #libFile:Ljava/io/File;
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 154
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 155
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 157
    :cond_5
    const/4 v1, 0x0

    .line 159
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    :try_start_2
    array-length v9, v6

    invoke-virtual {v2, v6, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 161
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v8}, Lcom/taobao/statistic/core/k;->a(Ljava/io/FileInputStream;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 162
    const/4 v8, 0x2

    const-string v9, "SOManager(LoadFile)"

    const-string v10, "ValidateAdler32 libFile success."

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 177
    if-eqz v2, :cond_c

    .line 179
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 182
    :goto_3
    const/4 v1, 0x0

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 167
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 168
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 169
    const/4 v8, 0x2

    const-string v9, "SOManager(LoadFile)"

    const-string v10, "Delete libFile because ValidateAdler32 libFile fail."

    invoke-static {v8, v9, v10}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 177
    :cond_7
    if-eqz v2, :cond_b

    .line 179
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 182
    :goto_4
    const/4 v1, 0x0

    .end local v0           #abi:Ljava/lang/String;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v4           #libFile:Ljava/io/File;
    .end local v6           #sodata:[B
    :cond_8
    :goto_5
    move-object v4, v7

    .line 192
    goto/16 :goto_1

    .line 174
    .restart local v0       #abi:Ljava/lang/String;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #libFile:Ljava/io/File;
    .restart local v6       #sodata:[B
    :catch_0
    move-exception v8

    .line 177
    :goto_6
    if-eqz v1, :cond_8

    .line 179
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 182
    :goto_7
    const/4 v1, 0x0

    goto :goto_5

    .line 175
    :catch_1
    move-exception v8

    .line 177
    :goto_8
    if-eqz v1, :cond_8

    .line 179
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 182
    :goto_9
    const/4 v1, 0x0

    goto :goto_5

    .line 177
    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v1, :cond_9

    .line 179
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 182
    :goto_b
    const/4 v1, 0x0

    :cond_9
    throw v7

    .line 187
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :cond_a
    const-string v8, "SOManager-LoadFile"

    const-string v9, "Sodata is null."

    invoke-static {v11, v8, v9}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 180
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    goto :goto_3

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v8

    goto :goto_7

    :catch_5
    move-exception v8

    goto :goto_9

    :catch_6
    move-exception v8

    goto :goto_b

    .line 177
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_a

    .line 175
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v8

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_8

    .line 174
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v8

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 141
    .end local v0           #abi:Ljava/lang/String;
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v6           #sodata:[B
    :catch_9
    move-exception v8

    goto/16 :goto_2

    .restart local v0       #abi:Ljava/lang/String;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #sodata:[B
    :cond_b
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :cond_c
    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static e(Landroid/content/Context;)Lcom/taobao/statistic/core/k;
    .locals 1
    .parameter "aContext"

    .prologue
    .line 38
    if-eqz p0, :cond_0

    .line 39
    new-instance v0, Lcom/taobao/statistic/core/k;

    invoke-direct {v0, p0}, Lcom/taobao/statistic/core/k;-><init>(Landroid/content/Context;)V

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private h([B)Z
    .locals 6
    .parameter "data"

    .prologue
    .line 45
    if-eqz p1, :cond_1

    .line 46
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 47
    .local v0, adler32:Ljava/util/zip/Adler32;
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 49
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    .line 50
    .local v2, value:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v4, Lcom/taobao/statistic/core/k;->lT:[J

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 51
    sget-object v4, Lcom/taobao/statistic/core/k;->lT:[J

    aget-wide v4, v4, v1

    cmp-long v4, v4, v2

    if-nez v4, :cond_0

    .line 52
    const/4 v4, 0x1

    .line 56
    .end local v0           #adler32:Ljava/util/zip/Adler32;
    .end local v1           #i:I
    .end local v2           #value:J
    :goto_1
    return v4

    .line 50
    .restart local v0       #adler32:Ljava/util/zip/Adler32;
    .restart local v1       #i:I
    .restart local v2       #value:J
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v0           #adler32:Ljava/util/zip/Adler32;
    .end local v1           #i:I
    .end local v2           #value:J
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public bZ()Lcom/taobao/statistic/core/k$a;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 80
    new-instance v2, Lcom/taobao/statistic/core/k$a;

    invoke-direct {v2}, Lcom/taobao/statistic/core/k$a;-><init>()V

    .line 81
    .local v2, lsr:Lcom/taobao/statistic/core/k$a;
    invoke-direct {p0}, Lcom/taobao/statistic/core/k;->ca()Ljava/io/File;

    move-result-object v1

    .line 82
    .local v1, libFile:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v3, 0x2

    const-string v4, "SOManager"

    const-string v5, "Call System.load() by SOManager"

    invoke-static {v3, v4, v5}, Lcom/taobao/statistic/core/d;->b(ILjava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v2, v6}, Lcom/taobao/statistic/core/k$a;->m(Z)V

    .line 91
    invoke-virtual {v2, v6}, Lcom/taobao/statistic/core/k$a;->l(Z)V

    .line 94
    :cond_0
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Throwable;
    goto :goto_0
.end method
