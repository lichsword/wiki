.class Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/view/PushBaseView$PushViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;->setTopPushView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

.field private final synthetic val$topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;Lcom/alibaba/adi/collie/model/push/PushMsg;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;->this$1:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;->val$topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;->val$topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->hasClicked(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 349
    return-void
.end method

.method public onClose()V
    .locals 2

    .prologue
    .line 338
    invoke-static {}, Lcom/alibaba/adi/collie/business/push/PushManager;->getInstance()Lcom/alibaba/adi/collie/business/push/PushManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment$3;->val$topMsg:Lcom/alibaba/adi/collie/model/push/PushMsg;

    invoke-virtual {v0, v1}, Lcom/alibaba/adi/collie/business/push/PushManager;->hasClosed(Lcom/alibaba/adi/collie/model/push/PushMsg;)V

    .line 339
    return-void
.end method

.method public onInit()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method
