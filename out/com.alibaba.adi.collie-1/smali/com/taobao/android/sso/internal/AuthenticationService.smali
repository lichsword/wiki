.class public Lcom/taobao/android/sso/internal/AuthenticationService;
.super Landroid/app/Service;
.source "AuthenticationService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SSO"


# instance fields
.field private mAuthenticator:Lcom/taobao/android/sso/internal/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 22
    const-string v0, "SSO"

    const-string v1, "SSO service is binded."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->mAuthenticator:Lcom/taobao/android/sso/internal/Authenticator;

    invoke-virtual {v0}, Lcom/taobao/android/sso/internal/Authenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "SSO"

    const-string v1, "SSO service started."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Lcom/taobao/android/sso/internal/Authenticator;

    invoke-direct {v0, p0}, Lcom/taobao/android/sso/internal/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->mAuthenticator:Lcom/taobao/android/sso/internal/Authenticator;

    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "SSO"

    const-string v1, "SSO service stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/android/sso/internal/AuthenticationService;->mAuthenticator:Lcom/taobao/android/sso/internal/Authenticator;

    .line 19
    return-void
.end method
