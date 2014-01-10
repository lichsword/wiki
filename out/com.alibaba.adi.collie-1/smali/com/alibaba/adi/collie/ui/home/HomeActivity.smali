.class public Lcom/alibaba/adi/collie/ui/home/HomeActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;
    }
.end annotation


# static fields
.field public static final HOME_SHOW_GUIDE:Ljava/lang/String; = "home_show_guide"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/home/HomeActivity;->TAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    const v3, 0x1020002

    .line 73
    sget-object v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity;->TAG:Ljava/lang/String;

    const-string v2, "xhh onCreate"

    invoke-static {v1, v2}, Lcom/alibaba/adi/collie/util/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/adi/collie/ui/home/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 78
    .local v0, fm:Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-direct {v1}, Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;-><init>()V

    iput-object v1, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity;->mFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    .line 80
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/adi/collie/ui/home/HomeActivity;->mFragment:Lcom/alibaba/adi/collie/ui/home/HomeActivity$HomeFragment;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 83
    :cond_0
    return-void
.end method
