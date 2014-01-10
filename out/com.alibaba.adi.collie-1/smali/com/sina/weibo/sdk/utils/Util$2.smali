.class Lcom/sina/weibo/sdk/utils/Util$2;
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
.field private final synthetic val$listener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/utils/Util$2;->val$listener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 85
    :try_start_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 87
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/Util$2;->val$listener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sina/weibo/sdk/utils/Util$2;->val$listener:Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/IWeiboDownloadListener;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    goto :goto_0
.end method
