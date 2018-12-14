.class public Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;
.super Ljava/lang/Object;
.source "CaptchaRequest.java"


# static fields
.field public static final BIND:I = 0x4

.field public static final LOGIN:I = 0x1

.field public static final PASSWORD_FORGOT:I = 0x2

.field public static final PASSWORD_MODIFY:I = 0x3

.field public static final SIGIN:I


# instance fields
.field private account:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "+86"

    .line 22
    iput-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->country:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->type:I

    return v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->account:Ljava/lang/String;

    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->country:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/mh/movie/core/mvp/model/entity/request/CaptchaRequest;->type:I

    return-void
.end method
