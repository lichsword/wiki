.class Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$3;
.super Ljava/lang/Object;
.source "KakaLibPosterDecodeManager.java"

# interfaces
.implements Lcom/etao/kakalib/views/IKaDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->showPosterNotMatchDialog()V
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
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$3;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$3;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    invoke-static {v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$3;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->mCallback:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;
    invoke-static {v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$2(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$KakaLibPosterCallback;->posterScanFailed()V

    .line 154
    :cond_0
    return-void
.end method
