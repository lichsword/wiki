.class public Lcom/alibaba/adi/collie/ui/news/NewsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "NewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/news/NewsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const v3, 0x1020002

    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/news/NewsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 67
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 68
    new-instance v1, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;-><init>()V

    .line 69
    .local v1, fragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 71
    .end local v1           #fragment:Lcom/alibaba/adi/collie/ui/news/NewsActivity$NewsFragment;
    :cond_0
    return-void
.end method
