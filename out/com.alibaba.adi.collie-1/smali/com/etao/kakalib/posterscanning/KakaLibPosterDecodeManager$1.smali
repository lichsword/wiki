.class Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;
.super Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;
.source "KakaLibPosterDecodeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->decodePoster([BII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

.field private final synthetic val$imgHeight:I

.field private final synthetic val$imgWidth:I

.field private final synthetic val$jpgstream:[B


# direct methods
.method constructor <init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;[BII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    iput-object p2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$jpgstream:[B

    iput p3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$imgWidth:I

    iput p4, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$imgHeight:I

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;-><init>(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$DefaultDecodeTask;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic decode()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->decode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public decode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->this$0:Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;

    #getter for: Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->context:Landroid/support/v4/app/FragmentActivity;
    invoke-static {v1}, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;->access$1(Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "postBg.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$jpgstream:[B

    invoke-static {v1, v0}, Lcom/etao/kakalib/util/KaKaLibUtils;->saveFile([BLjava/io/File;)Z

    .line 105
    iget-object v1, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$jpgstream:[B

    iget v2, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$imgWidth:I

    iget v3, p0, Lcom/etao/kakalib/posterscanning/KakaLibPosterDecodeManager$1;->val$imgHeight:I

    invoke-static {v1, v2, v3}, Lcom/etao/kaka/posterscanning/KakaPosterScanningEngine;->getPosterFeature([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
