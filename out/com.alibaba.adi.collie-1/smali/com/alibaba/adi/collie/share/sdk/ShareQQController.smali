.class public Lcom/alibaba/adi/collie/share/sdk/ShareQQController;
.super Ljava/lang/Object;
.source "ShareQQController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/share/sdk/ShareQQController$BaseUiListener;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "100583790"

.field private static final APP_KEY:Ljava/lang/String; = "12ae8b7f6bfa11cfb73655a864ee4350"

.field private static TAG:Ljava/lang/String;

.field private static mAPI:Lcom/tencent/tauth/Tencent;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOffset:I

.field private mShareParams:Landroid/os/Bundle;

.field shareHandler:Landroid/os/Handler;

.field shareThread:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "ShareQQController"

    sput-object v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0xc8

    iput v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mOffset:I

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mShareParams:Landroid/os/Bundle;

    .line 39
    new-instance v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$1;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$1;-><init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->shareHandler:Landroid/os/Handler;

    .line 47
    new-instance v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$2;-><init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->shareThread:Ljava/lang/Runnable;

    .line 31
    sget-object v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->TAG:Ljava/lang/String;

    const-string v1, "ShareQQController createInstance 1"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "100583790"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mAPI:Lcom/tencent/tauth/Tencent;

    .line 34
    sget-object v0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->TAG:Ljava/lang/String;

    const-string v1, "ShareQQController createInstance 2"

    invoke-static {v0, v1}, Landroid/taobao/util/TaoLog;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mShareParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->doShare2QQ(Landroid/os/Bundle;)V

    return-void
.end method

.method private doShare2QQ(Landroid/os/Bundle;)V
    .locals 3
    .parameter "params"

    .prologue
    .line 67
    sget-object v1, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mAPI:Lcom/tencent/tauth/Tencent;

    iget-object v0, p0, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$3;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController$3;-><init>(Lcom/alibaba/adi/collie/share/sdk/ShareQQController;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 88
    return-void
.end method


# virtual methods
.method public share2QQ(Landroid/os/Bundle;)V
    .locals 0
    .parameter "params"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/share/sdk/ShareQQController;->doShare2QQ(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method
