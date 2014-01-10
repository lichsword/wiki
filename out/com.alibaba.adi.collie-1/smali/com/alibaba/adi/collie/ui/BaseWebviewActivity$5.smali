.class Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$5;
.super Ljava/lang/Object;
.source "BaseWebviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity$5;->this$0:Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;

    const/4 v1, 0x0

    #setter for: Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->mPressBackAgain:Z
    invoke-static {v0, v1}, Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;->access$1(Lcom/alibaba/adi/collie/ui/BaseWebviewActivity;Z)V

    .line 86
    return-void
.end method
