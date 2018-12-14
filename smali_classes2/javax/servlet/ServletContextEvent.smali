.class public Ljavax/servlet/ServletContextEvent;
.super Ljava/util/EventObject;
.source "ServletContextEvent.java"


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .line 86
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/ServletContext;

    return-object v0
.end method
