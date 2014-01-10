.class public Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;
.super Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;
.source "WebNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;,
        Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;
    }
.end annotation


# static fields
.field public static final KEY_PUSH_MSG:Ljava/lang/String; = "keyPushMsg"


# instance fields
.field private final mInnerClickListener:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;

.field private pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

.field private refreshButton:Landroid/widget/ImageButton;

.field private rootViewLayout:Landroid/widget/FrameLayout;

.field private shareButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;-><init>(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->mInnerClickListener:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->load()V

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)Lcom/alibaba/adi/collie/model/push/PushMsg;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    return-object v0
.end method

.method private initContentView()V
    .locals 5

    .prologue
    .line 45
    const v3, 0x7f0800b2

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->rootViewLayout:Landroid/widget/FrameLayout;

    .line 46
    const v3, 0x7f0800b4

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->refreshButton:Landroid/widget/ImageButton;

    .line 47
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->refreshButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->mInnerClickListener:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v3, 0x7f0800b5

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->shareButton:Landroid/widget/ImageButton;

    .line 49
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->shareButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->mInnerClickListener:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, enableShare:Z
    iget-object v3, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v3}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v2

    .line 52
    .local v2, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getControlFlags()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;

    move-result-object v1

    .line 54
    .local v1, flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;->enableShareInWebPage()Z

    move-result v0

    .line 59
    .end local v1           #flags:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg$ControlFlags;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->shareButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 61
    new-instance v3, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;-><init>(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;)V

    invoke-virtual {p0, v3}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->setWebViewInterface(Ljava/lang/Object;)V

    .line 62
    return-void

    .line 57
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :cond_2
    const/16 v3, 0x8

    goto :goto_1
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .prologue
    .line 96
    const v0, 0x7f03001f

    return v0
.end method

.method public getPageRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->rootViewLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getPageUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v2}, Lcom/alibaba/adi/collie/model/push/PushMsg;->getMsg()Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;

    move-result-object v0

    .line 102
    .local v0, msg:Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;
    invoke-virtual {v0}, Lcom/alibaba/adi/collie/model/push/PushMsg$Msg;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, url:Ljava/lang/String;
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "keyPushMsg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/alibaba/adi/collie/model/push/PushMsg;

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 34
    invoke-super {p0, p1}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-direct {p0}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->initContentView()V

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 41
    invoke-super {p0}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onDestroy()V

    .line 42
    return-void
.end method
