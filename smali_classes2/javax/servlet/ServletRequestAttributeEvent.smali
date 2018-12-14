.class public Ljavax/servlet/ServletRequestAttributeEvent;
.super Ljavax/servlet/ServletRequestEvent;
.source "ServletRequestAttributeEvent.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 84
    iput-object p3, p0, Ljavax/servlet/ServletRequestAttributeEvent;->name:Ljava/lang/String;

    .line 85
    iput-object p4, p0, Ljavax/servlet/ServletRequestAttributeEvent;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Ljavax/servlet/ServletRequestAttributeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 107
    iget-object v0, p0, Ljavax/servlet/ServletRequestAttributeEvent;->value:Ljava/lang/Object;

    return-object v0
.end method
