.class Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;
.super Landroid/widget/CursorAdapter;
.source "AdiAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->creatAdapter()Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 2
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    .line 412
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 417
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 418
    .local v0, cursor:Landroid/database/Cursor;
    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mLabelColumn:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$2(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->mLabelIndex:I

    .line 419
    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mIsCheckedColumn:Ljava/lang/String;
    invoke-static {p1}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$3(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 424
    const v2, 0x7f0800cb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 425
    .local v0, text:Landroid/widget/CheckedTextView;
    iget v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->mLabelIndex:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$1(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/widget/ListView;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 427
    iget v4, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->mIsCheckedIndex:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 426
    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 428
    return-void

    .line 427
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v0}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$4(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog$2;->this$0:Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;

    #getter for: Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->mMultiChoiceItemLayout:I
    invoke-static {v1}, Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;->access$5(Lcom/alibaba/adi/collie/ui/view/AdiAlertDialog;)I

    move-result v1

    .line 433
    const/4 v2, 0x0

    .line 432
    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
