.class public Lorg/eclipse/jetty/servlet/ServletHolder$Registration;
.super Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;
.source "ServletHolder.java"

# interfaces
.implements Ljavax/servlet/ServletRegistration$Dynamic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Registration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder<",
        "Ljavax/servlet/Servlet;",
        ">.HolderRegistration;",
        "Ljavax/servlet/ServletRegistration$Dynamic;"
    }
.end annotation


# instance fields
.field protected _multipartConfig:Ljavax/servlet/MultipartConfigElement;

.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletHolder;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;-><init>(Lorg/eclipse/jetty/servlet/Holder;)V

    return-void
.end method


# virtual methods
.method public varargs addMapping([Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->illegalStateIfContextStarted()V

    .line 761
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 763
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 767
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->isDefault()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v1, :cond_0

    .line 770
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 771
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    .line 781
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 782
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 783
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 784
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object p1, p1, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 786
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getClassName()Ljava/lang/String;
    .locals 1

    .line 753
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .line 822
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitOrder()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 753
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getInitParameters()Ljava/util/Map;
    .locals 1

    .line 753
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getInitParameters()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMappings()Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    .line 792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    .line 795
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 797
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 799
    :cond_0
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 800
    array-length v5, v4

    if-lez v5, :cond_1

    .line 801
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getMultipartConfig()Ljavax/servlet/MultipartConfigElement;
    .locals 1

    .line 833
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->_multipartConfig:Ljavax/servlet/MultipartConfigElement;

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 753
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .line 810
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setAsyncSupported(Z)V
    .locals 0

    .line 753
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setAsyncSupported(Z)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0

    .line 753
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 753
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setInitParameters(Ljava/util/Map;)Ljava/util/Set;
    .locals 0

    .line 753
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/Holder$HolderRegistration;->setInitParameters(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public setLoadOnStartup(I)V
    .locals 1

    .line 816
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->illegalStateIfContextStarted()V

    .line 817
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    return-void
.end method

.method public setMultipartConfig(Ljavax/servlet/MultipartConfigElement;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->_multipartConfig:Ljavax/servlet/MultipartConfigElement;

    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 1

    .line 839
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setServletSecurity(Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 845
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->this$0:Lorg/eclipse/jetty/servlet/ServletHolder;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
