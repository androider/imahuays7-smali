.class public Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;
.super Ljava/lang/Object;
.source "UserMessageResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBeanX"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;
    }
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;",
            ">;"
        }
    .end annotation
.end field

.field private messageType:I

.field private messageTypeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMessageType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->messageType:I

    return v0
.end method

.method public getMessageTypeName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->messageTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX$ListBean;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->list:Ljava/util/List;

    return-void
.end method

.method public setMessageType(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->messageType:I

    return-void
.end method

.method public setMessageTypeName(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/UserMessageResponse$ListBeanX;->messageTypeName:Ljava/lang/String;

    return-void
.end method
