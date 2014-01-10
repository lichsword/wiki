.class public Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;
.super Ljava/lang/Object;
.source "ActionOpenTaobao.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# static fields
.field public static final TAG:Ljava/lang/String; = null

.field public static final TYPE_TAOBAO:I = 0x2

.field public static final TYPE_YUEBAO:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "type"
    .parameter "url"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    .line 20
    iput p2, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->type:I

    .line 21
    iput-object p3, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->url:Ljava/lang/String;

    .line 22
    return-void
.end method

.method private startTaobaoApp()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->startTaobaoClient(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 61
    return-void
.end method

.method private startTaobaoUrl()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->startBrowserPreferUcweb(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    .line 69
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 68
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->type:I

    packed-switch v0, :pswitch_data_0

    .line 54
    const-string v0, "Unknown"

    :goto_0
    return-object v0

    .line 50
    :pswitch_0
    const-string v0, "ActionOpenYuebao"

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "ActionOpenTaobao"

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->type:I

    packed-switch v0, :pswitch_data_0

    .line 44
    :goto_0
    return-void

    .line 30
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->startUriActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 34
    :pswitch_1
    sget-object v0, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    .line 35
    sget-object v1, Lcom/alibaba/adi/collie/CoreApplication;->sInstance:Lcom/alibaba/adi/collie/CoreApplication;

    invoke-virtual {v1}, Lcom/alibaba/adi/collie/CoreApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/util/Tools;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->startTaobaoApp()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenTaobao;->startTaobaoUrl()V

    goto :goto_0

    .line 28
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
