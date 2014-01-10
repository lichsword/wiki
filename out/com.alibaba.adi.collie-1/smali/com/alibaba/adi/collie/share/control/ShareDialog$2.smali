.class Lcom/alibaba/adi/collie/share/control/ShareDialog$2;
.super Ljava/lang/Object;
.source "ShareDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/share/control/ShareDialog;->shareClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/share/control/ShareDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$2;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alibaba/adi/collie/share/control/ShareDialog$2;->this$0:Lcom/alibaba/adi/collie/share/control/ShareDialog;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/share/control/ShareDialog;->dismiss()V

    .line 169
    return-void
.end method
