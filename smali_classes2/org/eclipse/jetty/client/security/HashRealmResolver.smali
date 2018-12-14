.class public Lorg/eclipse/jetty/client/security/HashRealmResolver;
.super Ljava/lang/Object;
.source "HashRealmResolver.java"

# interfaces
.implements Lorg/eclipse/jetty/client/security/RealmResolver;


# instance fields
.field private _realmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/client/security/Realm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSecurityRealm(Lorg/eclipse/jetty/client/security/Realm;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/HashRealmResolver;->_realmMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/client/security/HashRealmResolver;->_realmMap:Ljava/util/Map;

    .line 37
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/client/security/HashRealmResolver;->_realmMap:Ljava/util/Map;

    invoke-interface {p1}, Lorg/eclipse/jetty/client/security/Realm;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getRealm(Ljava/lang/String;Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;)Lorg/eclipse/jetty/client/security/Realm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object p2, p0, Lorg/eclipse/jetty/client/security/HashRealmResolver;->_realmMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jetty/client/security/Realm;

    return-object p1
.end method
