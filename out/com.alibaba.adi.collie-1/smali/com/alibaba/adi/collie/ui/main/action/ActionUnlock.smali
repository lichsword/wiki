.class public Lcom/alibaba/adi/collie/ui/main/action/ActionUnlock;
.super Ljava/lang/Object;
.source "ActionUnlock.java"

# interfaces
.implements Lcom/alibaba/adi/collie/ui/main/action/IAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPageLockFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 0

    .prologue
    .line 9
    return-void
.end method
