.class public Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;
.super Ljava/lang/Object;
.source "ExperienceRecordResponse.java"


# instance fields
.field private date:Ljava/lang/String;

.field private extension:I

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->extension:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->date:Ljava/lang/String;

    return-void
.end method

.method public setExtension(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->extension:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->type:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/ExperienceRecordResponse;->value:Ljava/lang/String;

    return-void
.end method
