.class public interface abstract Lcom/alibaba/adi/collie/ui/view/DigitKeypadView$DigitInputListener;
.super Ljava/lang/Object;
.source "DigitKeypadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/ui/view/DigitKeypadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DigitInputListener"
.end annotation


# virtual methods
.method public abstract onDigitValueChange(I)V
.end method

.method public abstract onFilledDigitBounds(Ljava/lang/String;I)V
.end method

.method public abstract onOutOfDigitBounds(Ljava/lang/String;I)V
.end method
