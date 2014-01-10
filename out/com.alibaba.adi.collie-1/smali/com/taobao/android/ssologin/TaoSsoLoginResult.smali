.class public Lcom/taobao/android/ssologin/TaoSsoLoginResult;
.super Lcom/taobao/android/ssologin/SsoLoginResult;
.source "TaoSsoLoginResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/ssologin/TaoSsoLoginResult$Cookie;
    }
.end annotation


# static fields
.field public static final UNKNOWERR:Ljava/lang/String; = "unknow_err"


# instance fields
.field public mCookie:[Ljava/lang/String;

.field public mEcode:Ljava/lang/String;

.field public mIsSuccess:Z

.field public mLoginTime:Ljava/lang/String;

.field public mNick:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mTopsession:Ljava/lang/String;

.field public mUserid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/taobao/android/ssologin/SsoLoginResult;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mSid:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mTopsession:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mNick:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mEcode:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mUserid:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mLoginTime:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mIsSuccess:Z

    .line 34
    iput-object v1, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mCookie:[Ljava/lang/String;

    .line 17
    return-void
.end method

.method public static parser([B)Lcom/taobao/android/ssologin/TaoSsoLoginResult;
    .locals 10
    .parameter "data"

    .prologue
    .line 57
    new-instance v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;

    invoke-direct {v7}, Lcom/taobao/android/ssologin/TaoSsoLoginResult;-><init>()V

    .line 60
    .local v7, ssoRet:Lcom/taobao/android/ssologin/TaoSsoLoginResult;
    :try_start_0
    new-instance v5, Ljava/lang/String;

    const-string v8, "utf-8"

    invoke-direct {v5, p0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 61
    .local v5, json:Ljava/lang/String;
    new-instance v6, Lcom/taobao/android/ssologin/ApiResponse;

    invoke-direct {v6}, Lcom/taobao/android/ssologin/ApiResponse;-><init>()V

    .line 62
    .local v6, response:Lcom/taobao/android/ssologin/ApiResponse;
    invoke-virtual {v6, v5}, Lcom/taobao/android/ssologin/ApiResponse;->parseResult(Ljava/lang/String;)Lcom/taobao/android/ssologin/ApiResponse;

    move-result-object v8

    iget-boolean v8, v8, Lcom/taobao/android/ssologin/ApiResponse;->success:Z

    if-eqz v8, :cond_6

    .line 63
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mIsSuccess:Z

    .line 64
    iget-object v4, v6, Lcom/taobao/android/ssologin/ApiResponse;->data:Lorg/json/JSONObject;

    .line 65
    .local v4, jsObj:Lorg/json/JSONObject;
    const-string v8, "sid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 66
    const-string v8, "sid"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mSid:Ljava/lang/String;

    .line 67
    :cond_0
    const-string v8, "loginTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 68
    const-string v8, "loginTime"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mLoginTime:Ljava/lang/String;

    .line 69
    :cond_1
    const-string v8, "nick"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 70
    const-string v8, "nick"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/taobao/android/ssologin/StringEscapeUtil;->unescapeHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mNick:Ljava/lang/String;

    .line 71
    :cond_2
    const-string v8, "ecode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 72
    const-string v8, "ecode"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mEcode:Ljava/lang/String;

    .line 73
    :cond_3
    const-string v8, "topSession"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 74
    const-string v8, "topSession"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mTopsession:Ljava/lang/String;

    .line 75
    :cond_4
    const-string v8, "userId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 76
    const-string v8, "userId"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mUserid:Ljava/lang/String;

    .line 77
    :cond_5
    const-string v8, "loginCookie"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 78
    const-string v8, "loginCookie"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 79
    .local v1, cookies:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    .line 80
    .local v0, cookieArray:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v3, v8, :cond_7

    .line 83
    iput-object v0, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mCookie:[Ljava/lang/String;

    .line 87
    .end local v0           #cookieArray:[Ljava/lang/String;
    .end local v1           #cookies:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #jsObj:Lorg/json/JSONObject;
    :cond_6
    iget-object v8, v6, Lcom/taobao/android/ssologin/ApiResponse;->errCode:Ljava/lang/String;

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mRetCode:Ljava/lang/String;

    .line 88
    iget-object v8, v6, Lcom/taobao/android/ssologin/ApiResponse;->errInfo:Ljava/lang/String;

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mRetInfo:Ljava/lang/String;

    .line 95
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #response:Lcom/taobao/android/ssologin/ApiResponse;
    :goto_1
    return-object v7

    .line 81
    .restart local v0       #cookieArray:[Ljava/lang/String;
    .restart local v1       #cookies:Lorg/json/JSONArray;
    .restart local v3       #i:I
    .restart local v4       #jsObj:Lorg/json/JSONObject;
    .restart local v5       #json:Ljava/lang/String;
    .restart local v6       #response:Lcom/taobao/android/ssologin/ApiResponse;
    :cond_7
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v0           #cookieArray:[Ljava/lang/String;
    .end local v1           #cookies:Lorg/json/JSONArray;
    .end local v3           #i:I
    .end local v4           #jsObj:Lorg/json/JSONObject;
    .end local v5           #json:Ljava/lang/String;
    .end local v6           #response:Lcom/taobao/android/ssologin/ApiResponse;
    :catch_0
    move-exception v2

    .line 92
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    const-string v8, "unknow_err"

    iput-object v8, v7, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mRetCode:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/taobao/android/ssologin/TaoSsoLoginResult;->mIsSuccess:Z

    return v0
.end method
