.class Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;
.super Ljava/lang/Object;
.source "WebNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;


# direct methods
.method private constructor <init>(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;-><init>(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)V

    return-void
.end method


# virtual methods
.method public sharePushMessage()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 122
    const-string v1, "AliNoticeWebShare"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$WebJSInterface;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->access$1(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 124
    .local v0, action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 125
    const/4 v0, 0x0

    .line 126
    return-void
.end method
