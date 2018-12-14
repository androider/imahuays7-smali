.class public Lorg/eclipse/jetty/client/security/SimpleRealmResolver;
.super Ljava/lang/Object;
.source "SimpleRealmResolver.java"

# interfaces
.implements Lorg/eclipse/jetty/client/security/RealmResolver;


# instance fields
.field private _realm:Lorg/eclipse/jetty/client/security/Realm;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/client/security/Realm;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/eclipse/jetty/client/security/SimpleRealmResolver;->_realm:Lorg/eclipse/jetty/client/security/Realm;

    return-void
.end method


# virtual methods
.method public getRealm(Ljava/lang/String;Lorg/eclipse/jetty/client/HttpDestination;Ljava/lang/String;)Lorg/eclipse/jetty/client/security/Realm;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    iget-object p1, p0, Lorg/eclipse/jetty/client/security/SimpleRealmResolver;->_realm:Lorg/eclipse/jetty/client/security/Realm;

    return-object p1
.end method
