.class Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;
.super Landroid/widget/ArrayAdapter;
.source "AdiAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->creatAdapter()Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 394
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 398
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, view:Landroid/view/View;
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$0(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)[Z

    move-result-object v2

    if-eqz v2, :cond_1

    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, isItemChecked:Z
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$0(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)[Z

    move-result-object v2

    array-length v2, v2

    if-ge p1, v2, :cond_0

    .line 402
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mCheckedItems:[Z
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$0(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)[Z

    move-result-object v2

    aget-boolean v0, v2, p1

    .line 404
    :cond_0
    if-eqz v0, :cond_1

    .line 405
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$1;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$1(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 408
    .end local v0           #isItemChecked:Z
    :cond_1
    return-object v1
.end method
