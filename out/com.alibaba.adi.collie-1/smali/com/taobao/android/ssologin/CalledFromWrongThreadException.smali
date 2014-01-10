.class public Lcom/taobao/android/ssologin/CalledFromWrongThreadException;
.super Ljava/lang/RuntimeException;
.source "CalledFromWrongThreadException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method
