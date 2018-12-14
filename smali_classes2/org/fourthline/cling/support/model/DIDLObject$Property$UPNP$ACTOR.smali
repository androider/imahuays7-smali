.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$ACTOR;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/DIDLObject$Property$UPNP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ACTOR"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/PersonWithRole;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$PropertyPersonWithRole;-><init>(Lorg/fourthline/cling/support/model/PersonWithRole;Ljava/lang/String;)V

    return-void
.end method
