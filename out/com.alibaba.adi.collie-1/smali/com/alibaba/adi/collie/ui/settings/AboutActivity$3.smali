.class Lcom/alibaba/adi/collie/ui/settings/AboutActivity$3;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->initContentViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/settings/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/settings/AboutActivity$3;->this$0:Lcom/alibaba/adi/collie/ui/settings/AboutActivity;

    invoke-virtual {v0}, Lcom/alibaba/adi/collie/ui/settings/AboutActivity;->finish()V

    .line 101
    return-void
.end method
