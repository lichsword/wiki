.class Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2$1;
.super Ljava/lang/Object;
.source "KakaLibCameraDialogHelper.java"

# interfaces
.implements Lcom/etao/kakalib/views/IKaDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2$1;->this$1:Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper$2;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/etao/kakalib/util/dialoghelper/KakaLibCameraDialogHelper;->access$1(Lcom/etao/kakalib/views/KakaLibInitAnimDialogFragment;)V

    .line 81
    return-void
.end method
