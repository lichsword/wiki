.class Lcom/ut/share/component/a$1;
.super Ljava/lang/Object;
.source "ShareController.java"

# interfaces
.implements Lcom/ut/share/view/ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ut/share/component/a;-><init>(Landroid/app/Activity;Lcom/ut/share/view/ShareView;Lcom/ut/share/data/ShareData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic pj:Lcom/ut/share/component/a;


# direct methods
.method constructor <init>(Lcom/ut/share/component/a;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ut/share/component/a$1;->pj:Lcom/ut/share/component/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShare(Lcom/ut/share/data/ShareAppInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ut/share/component/a$1;->pj:Lcom/ut/share/component/a;

    invoke-static {v0}, Lcom/ut/share/component/a;->a(Lcom/ut/share/component/a;)Lcom/ut/share/component/ShareProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ut/share/component/ShareProcessor;->share(Lcom/ut/share/data/ShareAppInfo;)V

    .line 27
    return-void
.end method
