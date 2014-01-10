.class Lcom/sina/weibo/sdk/api/ApiUtils;
.super Ljava/lang/Object;
.source "ApiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    }
.end annotation


# static fields
.field public static final BUILD_INT:I = 0x286e

.field public static final BUILD_INT_VER_2_2:I = 0x286f

.field private static final TAG:Ljava/lang/String; = "ApiUtils"

.field private static final WEIBO_IDENTITY_ACTION:Ljava/lang/String; = "com.sina.weibo.action.sdkidentity"

.field private static final WEIBO_NAME_URI:Landroid/net/Uri; = null

.field private static final WEIBO_SIGN:Ljava/lang/String; = "18da2bf10352443a00a5e046d9fca6bd"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "content://com.sina.weibo.sdkProvider/query/package"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/api/ApiUtils;->WEIBO_NAME_URI:Landroid/net/Uri;

    .line 25
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareSign([Landroid/content/pm/Signature;)Z
    .locals 4
    .parameter "sign"

    .prologue
    const/4 v2, 0x0

    .line 241
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 248
    :goto_1
    return v2

    .line 242
    :cond_0
    aget-object v3, p0, v2

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/sina/weibo/sdk/utils/MD5;->hexdigest([B)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, s:Ljava/lang/String;
    const-string v3, "18da2bf10352443a00a5e046d9fca6bd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v2, "Weibo"

    const-string v3, "check pass"

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x1

    goto :goto_1

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAssetWeiboInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .locals 12
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x0

    .line 163
    .line 164
    const/4 v10, 0x2

    .line 163
    :try_start_0
    invoke-virtual {p0, p1, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v7

    .line 165
    .local v7, weiboContext:Landroid/content/Context;
    const/4 v2, 0x0

    .line 167
    .local v2, is:Ljava/io/InputStream;
    const/16 v3, 0x400

    .line 168
    .local v3, len:I
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    .line 170
    .local v0, buf:[B
    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "weibo_for_sdk.json"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v5, sbContent:Ljava/lang/StringBuilder;
    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v2, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .local v4, readNum:I
    const/4 v10, -0x1

    if-ne v4, v10, :cond_3

    .line 177
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v10

    if-eqz v10, :cond_5

    .line 195
    :cond_0
    if-eqz v2, :cond_1

    .line 197
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_1
    move-object v8, v9

    .line 208
    .end local v0           #buf:[B
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v4           #readNum:I
    .end local v5           #sbContent:Ljava/lang/StringBuilder;
    .end local v7           #weiboContext:Landroid/content/Context;
    :cond_2
    :goto_2
    return-object v8

    .line 174
    .restart local v0       #buf:[B
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #readNum:I
    .restart local v5       #sbContent:Ljava/lang/StringBuilder;
    .restart local v7       #weiboContext:Landroid/content/Context;
    :cond_3
    :try_start_3
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 190
    .end local v0           #buf:[B
    .end local v4           #readNum:I
    .end local v5           #sbContent:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v10, "ApiUtils"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 195
    if-eqz v2, :cond_4

    .line 197
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v7           #weiboContext:Landroid/content/Context;
    :cond_4
    :goto_3
    move-object v8, v9

    .line 208
    goto :goto_2

    .line 180
    .restart local v0       #buf:[B
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #readNum:I
    .restart local v5       #sbContent:Ljava/lang/StringBuilder;
    .restart local v7       #weiboContext:Landroid/content/Context;
    :cond_5
    :try_start_6
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/api/ApiUtils;->validateSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 184
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/sina/weibo/sdk/api/ApiUtils;->parseSupportApi(Ljava/lang/String;)I

    move-result v6

    .line 185
    .local v6, supportApi:I
    new-instance v8, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    invoke-direct {v8}, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;-><init>()V

    .line 186
    .local v8, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    iput-object p1, v8, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    .line 187
    iput v6, v8, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 195
    if-eqz v2, :cond_2

    .line 197
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    .line 198
    :catch_1
    move-exception v9

    goto :goto_2

    .line 192
    .end local v0           #buf:[B
    .end local v4           #readNum:I
    .end local v5           #sbContent:Ljava/lang/StringBuilder;
    .end local v6           #supportApi:I
    .end local v8           #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    :catch_2
    move-exception v1

    .line 193
    .local v1, e:Ljava/lang/Exception;
    :try_start_8
    const-string v10, "ApiUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 195
    if-eqz v2, :cond_4

    .line 197
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 198
    :catch_3
    move-exception v10

    goto :goto_3

    .line 194
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 195
    if-eqz v2, :cond_6

    .line 197
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 201
    :cond_6
    :goto_4
    :try_start_b
    throw v10
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 202
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #len:I
    .end local v7           #weiboContext:Landroid/content/Context;
    :catch_4
    move-exception v1

    .line 203
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "ApiUtils"

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 204
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_5
    move-exception v1

    .line 205
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ApiUtils"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v1}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 198
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #buf:[B
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #len:I
    .restart local v4       #readNum:I
    .restart local v5       #sbContent:Ljava/lang/StringBuilder;
    .restart local v7       #weiboContext:Landroid/content/Context;
    :catch_6
    move-exception v10

    goto :goto_1

    .end local v0           #buf:[B
    .end local v4           #readNum:I
    .end local v5           #sbContent:Ljava/lang/StringBuilder;
    .local v1, e:Ljava/io/IOException;
    :catch_7
    move-exception v10

    goto :goto_3

    .end local v1           #e:Ljava/io/IOException;
    :catch_8
    move-exception v11

    goto :goto_4
.end method

.method public static isWeiboAppSupportAPI(I)Z
    .locals 1
    .parameter "supportApi"

    .prologue
    .line 226
    const/16 v0, 0x286e

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static parseSupportApi(Ljava/lang/String;)I
    .locals 4
    .parameter "weiboInfo"

    .prologue
    const/4 v1, -0x1

    .line 213
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    :goto_0
    return v1

    .line 217
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, json:Lorg/json/JSONObject;
    const-string v2, "support_api"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 219
    .end local v0           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static queryWeiboInfo(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    invoke-static {p0}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 87
    .end local v0           #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .local v1, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    :goto_0
    return-object v1

    .line 86
    .end local v1           #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .restart local v0       #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfoByFile(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    move-object v1, v0

    .line 87
    .end local v0           #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .restart local v1       #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    goto :goto_0
.end method

.method private static queryWeiboInfoByFile(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 127
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.sina.weibo.action.sdkidentity"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 130
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move-object v5, v6

    .line 152
    :cond_1
    :goto_0
    return-object v5

    .line 134
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_1
    if-gez v0, :cond_3

    move-object v5, v6

    .line 152
    goto :goto_0

    .line 136
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 138
    .local v4, ri:Landroid/content/pm/ResolveInfo;
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_4

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_4

    .line 139
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 140
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_5

    .line 134
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 144
    :cond_5
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 145
    .local v3, packageName:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/api/ApiUtils;->getAssetWeiboInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v5

    .line 146
    .local v5, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    if-nez v5, :cond_1

    goto :goto_2
.end method

.method public static queryWeiboInfoByPackage(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .locals 2
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 60
    const/4 v0, 0x0

    .line 61
    .local v0, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/api/ApiUtils;->getAssetWeiboInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 72
    :goto_0
    return-object v1

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/sina/weibo/sdk/api/ApiUtils;->queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    iget-object v1, v0, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static queryWeiboInfoByProvider(Landroid/content/Context;)Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 94
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sina/weibo/sdk/api/ApiUtils;->WEIBO_NAME_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 95
    if-nez v6, :cond_2

    .line 119
    if-eqz v6, :cond_0

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v13, v14

    .line 123
    :cond_1
    :goto_0
    return-object v13

    .line 98
    :cond_2
    :try_start_1
    const-string v1, "support_api"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 99
    .local v11, supportApiIndex:I
    const-string v1, "package"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 100
    .local v8, packageIndex:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 101
    const/4 v12, -0x1

    .line 102
    .local v12, supportApiInt:I
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 104
    .local v10, supportApi:Ljava/lang/String;
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v12

    .line 108
    :goto_1
    :try_start_3
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, packageName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0, v9}, Lcom/sina/weibo/sdk/api/ApiUtils;->validateSign(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 110
    new-instance v13, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;

    invoke-direct {v13}, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;-><init>()V

    .line 111
    .local v13, winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    iput-object v9, v13, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->packageName:Ljava/lang/String;

    .line 112
    iput v12, v13, Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;->supportApi:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 119
    if-eqz v6, :cond_1

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 116
    .end local v8           #packageIndex:I
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #supportApi:Ljava/lang/String;
    .end local v11           #supportApiIndex:I
    .end local v12           #supportApiInt:I
    .end local v13           #winfo:Lcom/sina/weibo/sdk/api/ApiUtils$WeiboInfo;
    :catch_0
    move-exception v7

    .line 117
    .local v7, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "ApiUtils"

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/sina/weibo/sdk/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    if-eqz v6, :cond_3

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v7           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    move-object v13, v14

    .line 123
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    .line 119
    if-eqz v6, :cond_4

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_4
    throw v1

    .line 119
    .restart local v8       #packageIndex:I
    .restart local v11       #supportApiIndex:I
    :cond_5
    if-eqz v6, :cond_3

    .line 120
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 105
    .restart local v10       #supportApi:Ljava/lang/String;
    .restart local v12       #supportApiInt:I
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static validateSign(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "pkgName"

    .prologue
    .line 232
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 233
    const/16 v3, 0x40

    .line 232
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 237
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v2}, Lcom/sina/weibo/sdk/api/ApiUtils;->compareSign([Landroid/content/pm/Signature;)Z

    move-result v2

    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, localNameNotFoundException:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method
