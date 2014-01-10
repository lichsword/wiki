.class Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$2;
.super Ljava/lang/Object;
.source "KakaLibPosterDecodeManager.java"

# interfaces
.implements Lcom/etao/kakalib/views/IKaDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$2;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    const/4 v1, 0x1

    #setter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->hasStop:Z
    invoke-static {v0, v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$6(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Z)V

    .line 123
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
