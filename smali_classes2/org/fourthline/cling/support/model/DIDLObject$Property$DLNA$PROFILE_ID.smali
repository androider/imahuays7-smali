.class public Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;
.super Lorg/fourthline/cling/support/model/DIDLObject$Property;
.source "DIDLObject.java"

# interfaces
.implements Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PROFILE_ID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/fourthline/cling/support/model/DIDLObject$Property<",
        "Lorg/fourthline/cling/support/model/DIDLAttribute;",
        ">;",
        "Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$NAMESPACE;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property$DLNA$PROFILE_ID;-><init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V

    return-void
.end method

.method public constructor <init>(Lorg/fourthline/cling/support/model/DIDLAttribute;)V
    .locals 1

    const-string v0, "profileID"

    .line 579
    invoke-direct {p0, p1, v0}, Lorg/fourthline/cling/support/model/DIDLObject$Property;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
