.class public Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;
.super Ljava/lang/Object;
.source "MainActivityContext.java"


# instance fields
.field private lockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

.field private final mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/ui/MainActivity;)V
    .locals 0
    .parameter "mainActivity"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;

    .line 13
    return-void
.end method


# virtual methods
.method public getLockLayout()Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->lockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    return-object v0
.end method

.method public getMainActivityRef()Lcom/alibaba/adi/collie/ui/MainActivity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->mainActivity:Lcom/alibaba/adi/collie/ui/MainActivity;

    return-object v0
.end method

.method public setLockLayout(Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;)V
    .locals 0
    .parameter "lockLayout"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/adi/collie/ui/aslide/MainActivityContext;->lockLayout:Lcom/alibaba/adi/collie/ui/aslide/content/LockLayout;

    .line 25
    return-void
.end method
