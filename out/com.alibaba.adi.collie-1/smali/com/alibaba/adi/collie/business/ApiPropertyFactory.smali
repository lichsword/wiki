.class public Lcom/alibaba/adi/collie/business/ApiPropertyFactory;
.super Ljava/lang/Object;
.source "ApiPropertyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newApiProperty(I)Landroid/taobao/apirequest/ApiProperty;
    .locals 1
    .parameter "priority"

    .prologue
    .line 19
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(II)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    return-object v0
.end method

.method public static newApiProperty(II)Landroid/taobao/apirequest/ApiProperty;
    .locals 1
    .parameter "priority"
    .parameter "tryTimes"

    .prologue
    .line 12
    new-instance v0, Landroid/taobao/apirequest/ApiProperty;

    invoke-direct {v0}, Landroid/taobao/apirequest/ApiProperty;-><init>()V

    .line 13
    .local v0, apiProperty:Landroid/taobao/apirequest/ApiProperty;
    invoke-virtual {v0, p1}, Landroid/taobao/apirequest/ApiProperty;->setRetryTimes(I)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/taobao/apirequest/ApiProperty;->setPriority(I)V

    .line 15
    return-object v0
.end method

.method public static newApiProperty(IIZ[B)Landroid/taobao/apirequest/ApiProperty;
    .locals 1
    .parameter "priority"
    .parameter "tryTimes"
    .parameter "isPost"
    .parameter "postData"

    .prologue
    .line 27
    invoke-static {p0, p1}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(II)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    .line 28
    .local v0, property:Landroid/taobao/apirequest/ApiProperty;
    invoke-virtual {v0, p2}, Landroid/taobao/apirequest/ApiProperty;->setPost(Z)V

    .line 29
    invoke-virtual {v0, p3}, Landroid/taobao/apirequest/ApiProperty;->setPostData([B)V

    .line 30
    return-object v0
.end method

.method public static newApiProperty(IZ[B)Landroid/taobao/apirequest/ApiProperty;
    .locals 1
    .parameter "priority"
    .parameter "isPost"
    .parameter "postData"

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/adi/collie/business/ApiPropertyFactory;->newApiProperty(IIZ[B)Landroid/taobao/apirequest/ApiProperty;

    move-result-object v0

    return-object v0
.end method
