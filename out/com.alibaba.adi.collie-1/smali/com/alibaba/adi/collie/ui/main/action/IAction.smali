.class public interface abstract Lcom/alibaba/adi/collie/ui/main/action/IAction;
.super Ljava/lang/Object;
.source "IAction.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/alibaba/adi/collie/ui/main/action/IAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/adi/collie/ui/main/action/IAction;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getPageLockFrom()Ljava/lang/String;
.end method

.method public abstract run()V
.end method
