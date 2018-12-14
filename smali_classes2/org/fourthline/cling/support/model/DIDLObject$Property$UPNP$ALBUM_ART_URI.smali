.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ALBUM_ART_URI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
        "Ljava/net/URI;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ALBUM_ART_URI;-><init>(Ljava/net/URI;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    const-string v0, "albumArtURI"

    .line 367
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List<",
            "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
            "Lorg/fourthline/cling/support/model/DIDLAttribute;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "albumArtURI"

    .line 371
    invoke-direct {p0, p1, v0, p2}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
