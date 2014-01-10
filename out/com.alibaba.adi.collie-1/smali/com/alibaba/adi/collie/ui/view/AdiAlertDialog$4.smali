.class Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;
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

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    iput-object p2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->val$listView:Landroid/widget/ListView;

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 475
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$0(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)[Z

    move-result-object v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$0(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)[Z

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$8(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$4;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    .line 478
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 480
    return-void
.end method
