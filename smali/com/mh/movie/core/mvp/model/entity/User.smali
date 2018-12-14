.class public Lcom/mh/movie/core/mvp/model/entity/User;
.super Ljava/lang/Object;
.source "User.java"


# instance fields
.field private final avatar_url:Ljava/lang/String;

.field private final id:I

.field private final login:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/User;->id:I

    .line 34
    iput-object p2, p0, Lcom/mh/movie/core/mvp/model/entity/User;->login:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/mh/movie/core/mvp/model/entity/User;->avatar_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvatarUrl()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/User;->avatar_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/User;->avatar_url:Ljava/lang/String;

    return-object v0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/User;->avatar_url:Ljava/lang/String;

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/User;->id:I

    return v0
.end method

.method public getLogin()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/User;->login:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mh/movie/core/mvp/model/entity/User;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " login -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mh/movie/core/mvp/model/entity/User;->login:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
