.class Lcom/sina/weibo/sdk/utils/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/utils/Util;->createConfirmDialog(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/Util$1;->val$activity:Landroid/app/Activity;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/Util$1;->val$activity:Landroid/app/Activity;

    #calls: Lcom/sina/weibo/sdk/utils/Util;->downloadWeibo(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/sina/weibo/sdk/utils/Util;->access$0(Landroid/app/Activity;)V

    .line 76
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    goto :goto_0
.end method
