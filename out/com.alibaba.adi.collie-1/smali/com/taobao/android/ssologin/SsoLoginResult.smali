.class public abstract Lcom/taobao/android/ssologin/SsoLoginResult;
.super Ljava/lang/Object;
.source "SsoLoginResult.java"


# instance fields
.field public mRetCode:Ljava/lang/String;

.field public mRetInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/taobao/android/ssologin/SsoLoginResult;->mRetCode:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/taobao/android/ssologin/SsoLoginResult;->mRetInfo:Ljava/lang/String;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract isSuccess()Z
.end method
