.class public Lcom/alibaba/adi/collie/ui/joke/JokeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "JokeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity;->TAG:Ljava/lang/String;

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

    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 69
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity;->mFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    .line 71
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/joke/JokeActivity;->mFragment:Lcom/alibaba/adi/collie/ui/joke/JokeActivity$JokeFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 73
    :cond_0
    return-void
.end method
