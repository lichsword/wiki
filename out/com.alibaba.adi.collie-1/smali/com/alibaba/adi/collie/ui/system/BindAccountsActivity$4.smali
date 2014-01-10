.class Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;
.super Ljava/lang/Object;
.source "BindAccountsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;)Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 187
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;->this$0:Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 188
    const v2, 0x7f0a007d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 189
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009f

    new-instance v2, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$1;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$1;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    const v1, 0x7f0a00a0

    new-instance v2, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$2;

    invoke-direct {v2, p0}, Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4$2;-><init>(Lcom/alibaba/adi/collie/ui/system/BindAccountsActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 206
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 207
    return-void
.end method
