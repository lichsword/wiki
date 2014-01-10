.class Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;
.super Ljava/lang/Object;
.source "AdiAlertDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->createListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 466
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$6(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 467
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsSingleChoice:Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$7(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$3;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->dismiss()V

    .line 470
    :cond_0
    return-void
.end method
