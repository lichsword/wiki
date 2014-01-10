.class Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;
.super Ljava/lang/Object;
.source "WebNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 77
    :pswitch_0
    const-string v1, "AliNoticeRefresh"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    #calls: Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->load()V
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->access$0(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)V

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v1, "AliNoticeShare"

    invoke-static {v1}, Lcom/alibaba/adi/collie/util/UserTrackHelper;->UTCtrlClicked(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity$InnerClickListener;->this$0:Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;

    #getter for: Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->pushMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;->access$1(Lcom/alibaba/adi/collie/ui/push/WebNewsActivity;)Lcom/alibaba/adi/collie/model/push/PushMsg;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alibaba/adi/collie/ui/main/action/ActionOpenShareDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 83
    .local v0, action:Lcom/alibaba/adi/collie/ui/main/action/IAction;
    invoke-interface {v0}, Lcom/alibaba/adi/collie/ui/main/action/IAction;->run()V

    .line 84
    const/4 v0, 0x0

    .line 85
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x7f0800b4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
