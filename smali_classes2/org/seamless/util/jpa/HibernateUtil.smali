.class public Lorg/seamless/util/jpa/HibernateUtil;
.super Ljava/lang/Object;
.source "HibernateUtil.java"


# static fields
.field public static final configuration:Lorg/hibernate/cfg/Configuration;

.field public static final sessionFactory:Lorg/hibernate/SessionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    :try_start_0
    new-instance v0, Lorg/hibernate/cfg/Configuration;

    invoke-direct {v0}, Lorg/hibernate/cfg/Configuration;-><init>()V

    invoke-virtual {v0}, Lorg/hibernate/cfg/Configuration;->configure()Lorg/hibernate/cfg/Configuration;

    move-result-object v0

    sput-object v0, Lorg/seamless/util/jpa/HibernateUtil;->configuration:Lorg/hibernate/cfg/Configuration;

    .line 31
    sget-object v0, Lorg/seamless/util/jpa/HibernateUtil;->configuration:Lorg/hibernate/cfg/Configuration;

    invoke-virtual {v0}, Lorg/hibernate/cfg/Configuration;->buildSessionFactory()Lorg/hibernate/SessionFactory;

    move-result-object v0

    sput-object v0, Lorg/seamless/util/jpa/HibernateUtil;->sessionFactory:Lorg/hibernate/SessionFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfiguration()Lorg/hibernate/cfg/Configuration;
    .locals 1

    .line 38
    sget-object v0, Lorg/seamless/util/jpa/HibernateUtil;->configuration:Lorg/hibernate/cfg/Configuration;

    return-object v0
.end method

.method public static getSessionFactory()Lorg/hibernate/SessionFactory;
    .locals 1

    .line 42
    sget-object v0, Lorg/seamless/util/jpa/HibernateUtil;->sessionFactory:Lorg/hibernate/SessionFactory;

    return-object v0
.end method
