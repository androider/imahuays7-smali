.class public Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;
.super Ljava/lang/Object;
.source "UserMessageResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private messageType:I

.field private sendTimeStr:Ljava/lang/String;

.field private sendUserName:Ljava/lang/String;

.field private targetJson:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->messageType:I

    return v0
.end method

.method public getSendTimeStr()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->sendTimeStr:Ljava/lang/String;

    return-object v0
.end method

.method public getSendUserName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->sendUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetJson()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->targetJson:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->messageType:I

    return-void
.end method

.method public setSendTimeStr(Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->sendTimeStr:Ljava/lang/String;

    return-void
.end method

.method public setSendUserName(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->sendUserName:Ljava/lang/String;

    return-void
.end method

.method public setTargetJson(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->targetJson:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListBean{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", content=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sendTimeStr=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->sendTimeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sendUserName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->sendUserName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", messageType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->messageType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;->targetJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
