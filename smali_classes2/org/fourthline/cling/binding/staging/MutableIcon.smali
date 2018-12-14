.class public Lorg/fourthline/cling/binding/staging/MutableIcon;
.super Ljava/lang/Object;
.source "MutableIcon.java"


# instance fields
.field public depth:I

.field public height:I

.field public mimeType:Ljava/lang/String;

.field public uri:Ljava/net/URI;

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/fourthline/cling/model/meta/Icon;
    .locals 7

    .line 34
    new-instance v6, Lorg/fourthline/cling/model/meta/Icon;

    iget-object v1, p0, Lorg/fourthline/cling/binding/staging/MutableIcon;->mimeType:Ljava/lang/String;

    iget v2, p0, Lorg/fourthline/cling/binding/staging/MutableIcon;->width:I

    iget v3, p0, Lorg/fourthline/cling/binding/staging/MutableIcon;->height:I

    iget v4, p0, Lorg/fourthline/cling/binding/staging/MutableIcon;->depth:I

    iget-object v5, p0, Lorg/fourthline/cling/binding/staging/MutableIcon;->uri:Ljava/net/URI;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/fourthline/cling/model/meta/Icon;-><init>(Ljava/lang/String;IIILjava/net/URI;)V

    return-object v6
.end method
