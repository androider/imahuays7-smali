.class public Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;
.super Ljava/lang/Object;
.source "LoginResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Auth"
.end annotation


# instance fields
.field private sign:Ljava/lang/String;

.field private timeStamp:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSign()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;->sign:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;->timeStamp:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setSign(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;->sign:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(I)V
    .locals 2

    int-to-long v0, p1

    .line 101
    iput-wide v0, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;->timeStamp:J

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/response/LoginResponse$Auth;->token:Ljava/lang/String;

    return-void
.end method
