.class public Lcom/weibo/sdk/android/util/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/weibo/sdk/android/util/Utility$UploadImageUtils;
    }
.end annotation


# static fields
.field private static decodes:[B

.field private static encodes:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/weibo/sdk/android/util/Utility;->encodes:[C

    .line 39
    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/weibo/sdk/android/util/Utility;->decodes:[B

    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static __createNewFile(Ljava/io/File;)Z
    .locals 3
    .parameter "file_"

    .prologue
    const/4 v1, 0x0

    .line 241
    if-nez p0, :cond_0

    .line 255
    :goto_0
    return v1

    .line 244
    :cond_0
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->makesureParentExist(Ljava/io/File;)V

    .line 245
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->delete(Ljava/io/File;)V

    .line 249
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$0(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 276
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->doesExisted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 265
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->deleteDependon(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->makesureFileExist(Ljava/lang/String;)V

    return-void
.end method

.method private static createNewFile(Ljava/io/File;)V
    .locals 3
    .parameter "file_"

    .prologue
    .line 227
    if-nez p0, :cond_1

    .line 231
    :cond_0
    return-void

    .line 230
    :cond_1
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->__createNewFile(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " doesn\'t be created!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decodeBase62(Ljava/lang/String;)[B
    .locals 9
    .parameter "string"

    .prologue
    const/16 v6, 0x69

    .line 174
    if-nez p0, :cond_0

    .line 175
    const/4 v6, 0x0

    .line 196
    :goto_0
    return-object v6

    .line 177
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 178
    .local v2, data:[C
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v7, v7

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 179
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, pos:I
    const/4 v5, 0x0

    .line 180
    .local v5, val:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v2

    if-lt v3, v7, :cond_1

    .line 196
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    .line 181
    :cond_1
    aget-char v1, v2, v3

    .line 182
    .local v1, c:C
    if-ne v1, v6, :cond_2

    .line 183
    add-int/lit8 v3, v3, 0x1

    aget-char v1, v2, v3

    .line 185
    const/16 v7, 0x61

    if-ne v1, v7, :cond_3

    move v1, v6

    .line 189
    :cond_2
    :goto_2
    shl-int/lit8 v7, v5, 0x6

    sget-object v8, Lcom/weibo/sdk/android/util/Utility;->decodes:[B

    aget-byte v8, v8, v1

    or-int v5, v7, v8

    .line 190
    add-int/lit8 v4, v4, 0x6

    .line 191
    :goto_3
    const/4 v7, 0x7

    if-gt v4, v7, :cond_6

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    :cond_3
    const/16 v7, 0x62

    if-ne v1, v7, :cond_4

    const/16 v1, 0x2b

    goto :goto_2

    .line 187
    :cond_4
    const/16 v7, 0x63

    if-ne v1, v7, :cond_5

    const/16 v1, 0x2f

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, -0x1

    aget-char v1, v2, v3

    goto :goto_2

    .line 192
    :cond_6
    add-int/lit8 v4, v4, -0x8

    shr-int v7, v5, v4

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 193
    const/4 v7, 0x1

    shl-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v5, v7

    goto :goto_3
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 54
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 55
    .local v2, params:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 56
    const-string v4, "&"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, array:[Ljava/lang/String;
    array-length v6, v0

    move v4, v5

    :goto_0
    if-lt v4, v6, :cond_1

    .line 62
    .end local v0           #array:[Ljava/lang/String;
    :cond_0
    return-object v2

    .line 57
    .restart local v0       #array:[Ljava/lang/String;
    :cond_1
    aget-object v1, v0, v4

    .line 58
    .local v1, parameter:Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, v:[Ljava/lang/String;
    aget-object v7, v3, v5

    invoke-static {v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static delete(Ljava/io/File;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 234
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " doesn\'t be deleted!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    return-void
.end method

.method private static deleteDependon(Ljava/io/File;I)Z
    .locals 3
    .parameter "file"
    .parameter "maxRetryCount"

    .prologue
    .line 200
    const/4 v1, 0x1

    .line 201
    .local v1, retryCount:I
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    const/4 p1, 0x5

    .line 202
    :cond_0
    const/4 v0, 0x0

    .line 204
    .local v0, isDeleted:Z
    if-eqz p0, :cond_2

    .line 205
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    if-gt v1, p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 214
    :cond_2
    return v0

    .line 206
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static deleteDependon(Ljava/lang/String;)Z
    .locals 1
    .parameter "filepath"

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/weibo/sdk/android/util/Utility;->deleteDependon(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static deleteDependon(Ljava/lang/String;I)Z
    .locals 1
    .parameter "filepath"
    .parameter "maxRetryCount"

    .prologue
    .line 261
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/weibo/sdk/android/util/Utility;->deleteDependon(Ljava/io/File;I)Z

    move-result v0

    goto :goto_0
.end method

.method private static doesExisted(Ljava/io/File;)Z
    .locals 1
    .parameter "file"

    .prologue
    .line 273
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static doesExisted(Ljava/lang/String;)Z
    .locals 1
    .parameter "filepath"

    .prologue
    .line 278
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/weibo/sdk/android/util/Utility;->doesExisted(Ljava/io/File;)Z

    move-result v0

    goto :goto_0
.end method

.method public static encodeBase62([B)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    const/16 v9, 0x69

    const/16 v8, 0x2f

    const/16 v7, 0x2b

    .line 145
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 146
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, pos:I
    const/4 v4, 0x0

    .line 147
    .local v4, val:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p0

    if-lt v1, v5, :cond_1

    .line 159
    if-lez v2, :cond_0

    .line 160
    sget-object v5, Lcom/weibo/sdk/android/util/Utility;->encodes:[C

    rsub-int/lit8 v6, v2, 0x6

    shl-int v6, v4, v6

    aget-char v0, v5, v6

    .line 162
    .local v0, c:C
    if-ne v0, v9, :cond_6

    const-string v5, "ia"

    .line 161
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 166
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 148
    :cond_1
    shl-int/lit8 v5, v4, 0x8

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    or-int v4, v5, v6

    .line 149
    add-int/lit8 v2, v2, 0x8

    .line 150
    :goto_2
    const/4 v5, 0x5

    if-gt v2, v5, :cond_2

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    :cond_2
    sget-object v5, Lcom/weibo/sdk/android/util/Utility;->encodes:[C

    add-int/lit8 v2, v2, -0x6

    shr-int v6, v4, v2

    aget-char v0, v5, v6

    .line 153
    .restart local v0       #c:C
    if-ne v0, v9, :cond_3

    const-string v5, "ia"

    .line 152
    :goto_3
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 156
    const/4 v5, 0x1

    shl-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    goto :goto_2

    .line 154
    :cond_3
    if-ne v0, v7, :cond_4

    const-string v5, "ib"

    goto :goto_3

    .line 155
    :cond_4
    if-ne v0, v8, :cond_5

    const-string v5, "ic"

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_3

    .line 163
    :cond_6
    if-ne v0, v7, :cond_7

    const-string v5, "ib"

    goto :goto_1

    .line 164
    :cond_7
    if-ne v0, v8, :cond_8

    const-string v5, "ic"

    goto :goto_1

    :cond_8
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    goto :goto_1
.end method

.method public static encodeParameters(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 7
    .parameter "httpParams"

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->isBundleEmpty(Lcom/weibo/sdk/android/WeiboParameters;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 95
    :cond_0
    const-string v4, ""

    .line 111
    :goto_0
    return-object v4

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 99
    .local v1, j:I
    const/4 v3, 0x0

    .local v3, loc:I
    :goto_1
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, key:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 102
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_3
    :try_start_0
    const-string v4, "UTF-8"

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 106
    invoke-virtual {p0, v2}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static encodeUrl(Lcom/weibo/sdk/android/WeiboParameters;)Ljava/lang/String;
    .locals 8
    .parameter "parameters"

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const-string v5, ""

    .line 90
    :goto_0
    return-object v5

    .line 70
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 72
    .local v2, first:Z
    const/4 v3, 0x0

    .local v3, loc:I
    :goto_1
    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 73
    :cond_1
    if-eqz v2, :cond_2

    .line 74
    const/4 v2, 0x0

    .line 79
    :goto_2
    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, _key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, _value:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 82
    const-string v5, "encodeUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \'s value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :goto_3
    const-string v5, "encodeUrl"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sina/weibo/sdk/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    .end local v0           #_key:Ljava/lang/String;
    .end local v1           #_value:Ljava/lang/String;
    :cond_2
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 85
    .restart local v0       #_key:Ljava/lang/String;
    .restart local v1       #_value:Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/WeiboParameters;->getKey(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 86
    invoke-virtual {p0, v3}, Lcom/weibo/sdk/android/WeiboParameters;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3
.end method

.method public static errorSAX(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "responsetext"

    .prologue
    .line 537
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 538
    .local v2, mErrorBun:Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 539
    const-string v3, "{"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 541
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 542
    .local v1, json:Lorg/json/JSONObject;
    const-string v3, "error"

    const-string v4, "error"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v3, "error_code"

    const-string v4, "error_code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v3, "error_description"

    const-string v4, "error_description"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    .end local v1           #json:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Lorg/json/JSONException;
    const-string v3, "error"

    const-string v4, "JSONExceptionerror"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static formBundle(Lcom/weibo/sdk/android/Oauth2AccessToken;)Landroid/os/Bundle;
    .locals 5
    .parameter "oat"

    .prologue
    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "refresh_token"

    invoke-virtual {p0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getRefreshToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v1, "expires_in"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/weibo/sdk/android/Oauth2AccessToken;->getExpiresTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-object v0
.end method

.method public static formErrorBundle(Ljava/lang/Exception;)Landroid/os/Bundle;
    .locals 3
    .parameter "e"

    .prologue
    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    .local v0, params:Landroid/os/Bundle;
    const-string v1, "error"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method public static getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 574
    const/16 v6, 0x40

    .line 573
    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 578
    .local v2, packageInfo:Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    .line 585
    .end local v0           #j:I
    .end local v2           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v4

    .line 575
    :catch_0
    move-exception v1

    .line 576
    .local v1, localNameNotFoundException:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_1

    .line 579
    .end local v1           #localNameNotFoundException:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #j:I
    .restart local v2       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    .line 581
    .local v3, str:[B
    if-eqz v3, :cond_1

    .line 582
    invoke-static {v3}, Lcom/weibo/sdk/android/util/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 578
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static isBundleEmpty(Lcom/weibo/sdk/android/WeiboParameters;)Z
    .locals 1
    .parameter "bundle"

    .prologue
    .line 134
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/weibo/sdk/android/WeiboParameters;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x1

    .line 137
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 8
    .parameter "ct"

    .prologue
    const/4 v3, 0x0

    .line 554
    .line 555
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 554
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 556
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v3

    .line 559
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 560
    .local v1, info:[Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 561
    array-length v5, v1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v2, v1, v4

    .line 562
    .local v2, name:Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 563
    const/4 v3, 0x1

    goto :goto_0

    .line 561
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 4
    .parameter "mContext"

    .prologue
    const/4 v2, 0x1

    .line 317
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 318
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 319
    .local v0, activeNetInfo:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 322
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static makesureFileExist(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 300
    if-nez p0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->makesureParentExist(Ljava/io/File;)V

    .line 304
    invoke-static {p0}, Lcom/weibo/sdk/android/util/Utility;->createNewFile(Ljava/io/File;)V

    goto :goto_0
.end method

.method private static makesureFileExist(Ljava/lang/String;)V
    .locals 1
    .parameter "filePath_"

    .prologue
    .line 310
    if-nez p0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/weibo/sdk/android/util/Utility;->makesureFileExist(Ljava/io/File;)V

    goto :goto_0
.end method

.method private static makesureParentExist(Ljava/io/File;)V
    .locals 2
    .parameter "file_"

    .prologue
    .line 283
    if-nez p0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 286
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 287
    .local v0, parent:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    invoke-static {v0}, Lcom/weibo/sdk/android/util/Utility;->mkdirs(Ljava/io/File;)V

    goto :goto_0
.end method

.method private static mkdirs(Ljava/io/File;)V
    .locals 3
    .parameter "dir_"

    .prologue
    .line 220
    if-nez p0, :cond_1

    .line 224
    :cond_0
    return-void

    .line 223
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fail to make "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "url"

    .prologue
    .line 42
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, u:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/weibo/sdk/android/util/Utility;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 44
    .local v0, b:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/weibo/sdk/android/util/Utility;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0           #b:Landroid/os/Bundle;
    .end local v2           #u:Ljava/net/URL;
    :goto_0
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "title"
    .parameter "text"

    .prologue
    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, alertBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 129
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 131
    return-void
.end method

.method public static showToast(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "content"
    .parameter "ct"

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 52
    return-void
.end method
