.class public interface abstract Lorg/eclipse/jetty/server/Authentication;
.super Ljava/lang/Object;
.source "Authentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/Authentication$SendSuccess;,
        Lorg/eclipse/jetty/server/Authentication$Failure;,
        Lorg/eclipse/jetty/server/Authentication$Challenge;,
        Lorg/eclipse/jetty/server/Authentication$ResponseSent;,
        Lorg/eclipse/jetty/server/Authentication$Deferred;,
        Lorg/eclipse/jetty/server/Authentication$Wrapped;,
        Lorg/eclipse/jetty/server/Authentication$User;
    }
.end annotation


# static fields
.field public static final NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

.field public static final SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

.field public static final SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

.field public static final SEND_SUCCESS:Lorg/eclipse/jetty/server/Authentication;

.field public static final UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 126
    new-instance v0, Lorg/eclipse/jetty/server/Authentication$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/Authentication$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;

    .line 135
    new-instance v0, Lorg/eclipse/jetty/server/Authentication$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/Authentication$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->NOT_CHECKED:Lorg/eclipse/jetty/server/Authentication;

    .line 143
    new-instance v0, Lorg/eclipse/jetty/server/Authentication$3;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/Authentication$3;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_CONTINUE:Lorg/eclipse/jetty/server/Authentication;

    .line 151
    new-instance v0, Lorg/eclipse/jetty/server/Authentication$4;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/Authentication$4;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    .line 153
    new-instance v0, Lorg/eclipse/jetty/server/Authentication$5;

    invoke-direct {v0}, Lorg/eclipse/jetty/server/Authentication$5;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/Authentication;->SEND_SUCCESS:Lorg/eclipse/jetty/server/Authentication;

    return-void
.end method
