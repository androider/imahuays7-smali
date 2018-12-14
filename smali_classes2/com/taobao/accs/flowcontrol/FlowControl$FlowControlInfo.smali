.class public Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;
.super Ljava/lang/Object;
.source "Taobao"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/accs/flowcontrol/FlowControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlowControlInfo"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1f5d1a48138d31b7L


# instance fields
.field public bizId:Ljava/lang/String;

.field public delayTime:J

.field public expireTime:J

.field public serviceId:Ljava/lang/String;

.field public startTime:J

.field public status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJJ)V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->serviceId:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->bizId:Ljava/lang/String;

    .line 182
    iput p3, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->status:I

    .line 183
    iput-wide p4, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    const-wide/16 p1, 0x0

    cmp-long p3, p6, p1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p6, p1

    .line 184
    :goto_0
    iput-wide p6, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    cmp-long p3, p8, p1

    if-lez p3, :cond_1

    move-wide p1, p8

    .line 185
    :cond_1
    iput-wide p1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    return-void
.end method


# virtual methods
.method public isExpired()Z
    .locals 8

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    iget-wide v4, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    add-long v6, v2, v4

    sub-long v2, v0, v6

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "flow ctrl serviceId:"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " bizId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->bizId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, " delayTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->delayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, " expireTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v1, p0, Lcom/taobao/accs/flowcontrol/FlowControl$FlowControlInfo;->expireTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
