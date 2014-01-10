.class public Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;
.super Landroid/widget/ImageView;
.source "NetworkInfoImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;
    }
.end annotation


# instance fields
.field private final mconneChangedReceiver:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->mconneChangedReceiver:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance v0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    invoke-direct {v0, p0}, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;-><init>(Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;)V

    iput-object v0, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->mconneChangedReceiver:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    .line 32
    return-void
.end method


# virtual methods
.method public getConnectivityChangedReceiver()Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView;->mconneChangedReceiver:Lcom/alibaba/adi/collie/ui/view/NetworkInfoImageView$connectivityChangedReceiver;

    return-object v0
.end method
