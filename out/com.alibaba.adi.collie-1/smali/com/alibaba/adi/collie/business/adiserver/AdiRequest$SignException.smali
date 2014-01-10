.class public Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;
.super Ljava/lang/RuntimeException;
.source "AdiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SignException"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;


# direct methods
.method public constructor <init>(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "msg"

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;->this$0:Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;

    .line 96
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter "msg"
    .parameter "rootExp"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/alibaba/adi/collie/business/adiserver/AdiRequest$SignException;->this$0:Lcom/alibaba/adi/collie/business/adiserver/AdiRequest;

    .line 100
    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    return-void
.end method
