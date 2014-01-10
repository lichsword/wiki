.class Lcom/alibaba/adi/collie/share/control/ShareDialog$3$1;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alibaba/adi/collie/share/control/ShareDialog$3;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/share/control/ShareDialog$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3$1;->this$1:Lcom/alibaba/adi/collie/share/control/ShareDialog$3;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$3$1;->this$1:Lcom/alibaba/adi/collie/share/control/ShareDialog$3;

    #getter for: Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;
    invoke-static {v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog$3;->access$0(Lcom/alibaba/adi/collie/share/control/ShareDialog$3;)Lcom/alibaba/adi/collie/share/control/ShareDialog;

    move-result-object v0

    #calls: Lcom/alibaba/adi/collie/share/control/ShareDialog;->openShareActivity()V
    invoke-static {v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->access$3(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V

    .line 186
    return-void
.end method
