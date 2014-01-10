.class public Lorg/lichsword/util/HttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "HttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lichsword/util/HttpClient$IFileProcess;
    }
.end annotation


# static fields
.field private static final DEFAULT_USER_AGENT:Ljava/lang/String; = "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB6"

.field public static final TAG:Ljava/lang/String;

.field private static final sThreadBlocked:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private mCookieEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/lichsword/util/HttpClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/lichsword/util/HttpClient;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/lichsword/util/HttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    .line 61
    new-instance v0, Lorg/lichsword/util/HttpClient$1;

    invoke-direct {v0}, Lorg/lichsword/util/HttpClient$1;-><init>()V

    sput-object v0, Lorg/lichsword/util/HttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    .line 68
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "conman"
    .parameter "params"

    .prologue
    .line 413
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lichsword/util/HttpClient;->mCookieEnable:Z

    .line 414
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/lichsword/util/HttpClient;->mCookieEnable:Z

    .line 409
    return-void
.end method

.method static synthetic access$0()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lorg/lichsword/util/HttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static decodeEntityAsStream(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 2
    .parameter "entity"

    .prologue
    .line 314
    const/4 v1, 0x0

    .line 315
    .local v1, result:Ljava/io/InputStream;
    if-eqz p0, :cond_0

    .line 317
    :try_start_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 322
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/io/File;Lorg/lichsword/util/HttpClient$IFileProcess;)Z
    .locals 8
    .parameter "url"
    .parameter "saveToFile"
    .parameter "callback"

    .prologue
    const/4 v6, 0x1

    .line 219
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 246
    :goto_0
    return v6

    .line 222
    :cond_0
    if-nez p1, :cond_1

    .line 223
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "saveToFile may not be null."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 225
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 226
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 228
    :cond_2
    const/4 v0, 0x0

    .line 230
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 231
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lorg/lichsword/util/HttpClient;->newInstance()Lorg/lichsword/util/HttpClient;

    move-result-object v3

    .line 232
    .local v3, httpClient:Lorg/lichsword/util/HttpClient;
    invoke-virtual {v3, v2}, Lorg/lichsword/util/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 233
    .local v4, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 234
    .local v5, statusCode:I
    const/16 v7, 0xc8

    if-ne v7, v5, :cond_3

    .line 236
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7, v1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    invoke-static {v1}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 241
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v3           #httpClient:Lorg/lichsword/util/HttpClient;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #statusCode:I
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 244
    :goto_1
    invoke-static {v0}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    .line 246
    :goto_2
    const/4 v6, 0x0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v6

    .line 244
    :goto_3
    invoke-static {v0}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    .line 245
    throw v6

    .line 244
    .restart local v2       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v3       #httpClient:Lorg/lichsword/util/HttpClient;
    .restart local v4       #response:Lorg/apache/http/HttpResponse;
    .restart local v5       #statusCode:I
    :cond_3
    invoke-static {v0}, Lorg/lichsword/util/HttpClient;->quietClose(Ljava/io/Closeable;)V

    goto :goto_2

    .line 243
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 241
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static downloadImage(Ljava/lang/String;Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "url"
    .parameter "saveToFile"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 266
    const/4 v10, 0x0

    .line 302
    :goto_0
    return-object v10

    .line 268
    :cond_0
    if-nez p1, :cond_1

    .line 269
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "saveToFile may not be null."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 271
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 272
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 276
    :cond_2
    :try_start_0
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 277
    .local v5, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lorg/lichsword/util/HttpClient;->newInstance()Lorg/lichsword/util/HttpClient;

    move-result-object v6

    .line 278
    .local v6, httpClient:Lorg/lichsword/util/HttpClient;
    invoke-virtual {v6, v5}, Lorg/lichsword/util/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 279
    .local v8, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 280
    .local v9, statusCode:I
    const/16 v10, 0xc8

    if-ne v10, v9, :cond_3

    .line 281
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 282
    .local v7, os:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 283
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 284
    .local v2, bytes:[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 288
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 289
    .local v1, bos:Ljava/io/BufferedOutputStream;
    const/4 v10, 0x0

    array-length v11, v2

    invoke-virtual {v1, v2, v10, v11}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 290
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 291
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 296
    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    :goto_1
    const/4 v10, 0x0

    :try_start_2
    array-length v11, v2

    invoke-static {v2, v10, v11}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .end local v2           #bytes:[B
    .end local v5           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #httpClient:Lorg/lichsword/util/HttpClient;
    .end local v7           #os:Ljava/io/ByteArrayOutputStream;
    .end local v8           #response:Lorg/apache/http/HttpResponse;
    .end local v9           #statusCode:I
    :cond_3
    :goto_2
    move-object v10, v0

    .line 302
    goto :goto_0

    .line 299
    :catch_0
    move-exception v3

    .line 300
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 292
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v2       #bytes:[B
    .restart local v5       #get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #httpClient:Lorg/lichsword/util/HttpClient;
    .restart local v7       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #response:Lorg/apache/http/HttpResponse;
    .restart local v9       #statusCode:I
    :catch_1
    move-exception v10

    goto :goto_1
.end method

.method public static getSetCookieString(Lorg/apache/http/cookie/Cookie;)Ljava/lang/String;
    .locals 4
    .parameter "cookie"

    .prologue
    .line 477
    const/4 v2, 0x0

    .line 478
    .local v2, setCookie:Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    .line 485
    .local v1, expires:Ljava/util/Date;
    if-eqz v1, :cond_0

    .line 486
    const-string v3, ";expires="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v1}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    const-string v3, ";path="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    const-string v3, ";domain="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-interface {p0}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 494
    const-string v3, ";Secure"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #expires:Ljava/util/Date;
    :cond_2
    return-object v2
.end method

.method public static getUrlAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .parameter "url"

    .prologue
    .line 197
    invoke-static {p0}, Lorg/lichsword/util/HttpClient;->getUrlAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, json:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-object v2

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 205
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUrlAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .parameter "url"

    .prologue
    .line 178
    invoke-static {p0}, Lorg/lichsword/util/HttpClient;->getUrlAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, json:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 181
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-object v2

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 186
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getUrlAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 128
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lorg/lichsword/util/HttpClient;->newInstance()Lorg/lichsword/util/HttpClient;

    move-result-object v2

    .line 130
    .local v2, httpClient:Lorg/lichsword/util/HttpClient;
    invoke-virtual {v2, v1}, Lorg/lichsword/util/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 131
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 132
    .local v4, statusCode:I
    const/16 v5, 0xc8

    if-ne v5, v4, :cond_0

    .line 134
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 140
    .end local v1           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #httpClient:Lorg/lichsword/util/HttpClient;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #statusCode:I
    :goto_0
    return-object v5

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getUrlAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "defaultCharset"

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, get:Lorg/apache/http/client/methods/HttpGet;
    invoke-static {}, Lorg/lichsword/util/HttpClient;->newInstance()Lorg/lichsword/util/HttpClient;

    move-result-object v2

    .line 156
    .local v2, httpClient:Lorg/lichsword/util/HttpClient;
    invoke-virtual {v2, v1}, Lorg/lichsword/util/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 157
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 158
    .local v4, statusCode:I
    const/16 v5, 0xc8

    if-ne v5, v4, :cond_0

    .line 160
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 167
    .end local v1           #get:Lorg/apache/http/client/methods/HttpGet;
    .end local v2           #httpClient:Lorg/lichsword/util/HttpClient;
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    .end local v4           #statusCode:I
    :goto_0
    return-object v5

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lorg/lichsword/util/HttpClient;
    .locals 2

    .prologue
    .line 381
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/lichsword/util/HttpClient;->newInstance(Ljava/lang/String;Z)Lorg/lichsword/util/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lorg/lichsword/util/HttpClient;
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/lichsword/util/HttpClient;->newInstance(Ljava/lang/String;Z)Lorg/lichsword/util/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Z)Lorg/lichsword/util/HttpClient;
    .locals 6
    .parameter "userAgent"
    .parameter "ignoreSSLSecurity"

    .prologue
    .line 337
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 341
    .local v0, params:Lorg/apache/http/params/HttpParams;
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 344
    const/16 v2, 0x1770

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 345
    const/16 v2, 0x3a98

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 346
    const/16 v2, 0x2000

    invoke-static {v0, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 350
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 353
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const-string p0, "Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US; rv:1.9.1.8) Gecko/20100202 Firefox/3.5.8 GTB6"

    .line 356
    :cond_0
    invoke-static {v0, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 357
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 358
    .local v1, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    .line 359
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 358
    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 372
    new-instance v2, Lorg/lichsword/util/HttpClient;

    invoke-direct {v2, v0}, Lorg/lichsword/util/HttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    return-object v2
.end method

.method public static newInstance(Z)Lorg/lichsword/util/HttpClient;
    .locals 1
    .parameter "ignoreSSLSecurity"

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/lichsword/util/HttpClient;->newInstance(Ljava/lang/String;Z)Lorg/lichsword/util/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static postContent(Ljava/lang/String;Ljava/util/List;)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 517
    .local v3, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {}, Lorg/lichsword/util/HttpClient;->newInstance()Lorg/lichsword/util/HttpClient;

    move-result-object v2

    .line 520
    .local v2, httpClient:Lorg/lichsword/util/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 521
    const-string v5, "UTF-8"

    .line 520
    invoke-direct {v1, p1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 522
    .local v1, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 524
    invoke-virtual {v2, v3}, Lorg/lichsword/util/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 525
    .local v4, response:Lorg/apache/http/HttpResponse;
    if-eqz v4, :cond_0

    .line 526
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 539
    .end local v1           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v4

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 539
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 534
    :catch_1
    move-exception v0

    .line 535
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 536
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 537
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static postContentWithResponseContent(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v6, 0x0

    .line 546
    .local v6, result:Ljava/lang/String;
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 547
    .local v4, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {}, Lorg/lichsword/util/HttpClient;->newInstance()Lorg/lichsword/util/HttpClient;

    move-result-object v2

    .line 550
    .local v2, httpClient:Lorg/lichsword/util/HttpClient;
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .line 551
    const-string v8, "UTF-8"

    .line 550
    invoke-direct {v1, p1, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 552
    .local v1, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v4, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 555
    invoke-virtual {v2, v4}, Lorg/lichsword/util/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 556
    .local v5, response:Lorg/apache/http/HttpResponse;
    if-eqz v5, :cond_0

    .line 557
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    .line 558
    .local v7, statusCode:I
    const/16 v8, 0xc8

    if-ne v8, v7, :cond_0

    .line 561
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 562
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {v3}, Lorg/lichsword/util/FileUtil;->readInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 575
    .end local v1           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v5           #response:Lorg/apache/http/HttpResponse;
    .end local v7           #statusCode:I
    :cond_0
    :goto_0
    return-object v6

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 567
    const/4 v6, 0x0

    goto :goto_0

    .line 568
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 569
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 570
    const/4 v6, 0x0

    goto :goto_0

    .line 571
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v0

    .line 572
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 573
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static final quietClose(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 449
    if-eqz p0, :cond_0

    .line 451
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static setThreadBlocked(Z)V
    .locals 2
    .parameter "blocked"

    .prologue
    .line 466
    sget-object v0, Lorg/lichsword/util/HttpClient;->sThreadBlocked:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 467
    return-void
.end method


# virtual methods
.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 429
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 430
    .local v0, context:Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    .line 431
    invoke-virtual {p0}, Lorg/lichsword/util/HttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 430
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    const-string v1, "http.cookiespec-registry"

    .line 433
    invoke-virtual {p0}, Lorg/lichsword/util/HttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 432
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    const-string v1, "http.auth.credentials-provider"

    .line 435
    invoke-virtual {p0}, Lorg/lichsword/util/HttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 434
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 436
    iget-boolean v1, p0, Lorg/lichsword/util/HttpClient;->mCookieEnable:Z

    if-eqz v1, :cond_0

    .line 437
    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lorg/lichsword/util/HttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    :cond_0
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 2

    .prologue
    .line 419
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 420
    .local v0, processor:Lorg/apache/http/protocol/BasicHttpProcessor;
    sget-object v1, Lorg/lichsword/util/HttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 422
    return-object v0
.end method

.method public enableAllowAllVerifier()V
    .locals 5

    .prologue
    .line 80
    invoke-virtual {p0}, Lorg/lichsword/util/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 81
    .local v0, connectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 82
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    const-string v4, "https"

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 83
    .local v1, httpsScheme:Lorg/apache/http/conn/scheme/Scheme;
    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v3

    .line 85
    .local v3, socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v4, v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v4, :cond_0

    .line 86
    check-cast v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    .line 87
    .end local v3           #socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    sget-object v4, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v3, v4}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 90
    :cond_0
    return-void
.end method

.method public enableSSLSecurity()V
    .locals 8

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/lichsword/util/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    .line 99
    .local v0, connectionManager:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v2

    .line 100
    .local v2, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    if-eqz v2, :cond_0

    .line 101
    const-string v4, "https"

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v1

    .line 102
    .local v1, httpsScheme:Lorg/apache/http/conn/scheme/Scheme;
    if-eqz v1, :cond_2

    .line 104
    invoke-virtual {v1}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v3

    .line 105
    .local v3, socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    instance-of v4, v3, Lorg/apache/http/conn/ssl/SSLSocketFactory;

    if-eqz v4, :cond_1

    .line 113
    .end local v1           #httpsScheme:Lorg/apache/http/conn/scheme/Scheme;
    .end local v3           #socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v1       #httpsScheme:Lorg/apache/http/conn/scheme/Scheme;
    .restart local v3       #socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_1
    const-string v4, "https"

    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->unregister(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    .line 110
    .end local v3           #socketFactory:Lorg/apache/http/conn/scheme/SocketFactory;
    :cond_2
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    .line 111
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 110
    invoke-virtual {v2, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    goto :goto_0
.end method

.method public isCookieEnable()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lorg/lichsword/util/HttpClient;->mCookieEnable:Z

    return v0
.end method

.method public setCookieEnable(Z)V
    .locals 0
    .parameter "cookieEnable"

    .prologue
    .line 116
    iput-boolean p1, p0, Lorg/lichsword/util/HttpClient;->mCookieEnable:Z

    .line 117
    return-void
.end method
