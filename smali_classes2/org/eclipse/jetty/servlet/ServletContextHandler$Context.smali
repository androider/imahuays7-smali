.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;
.super Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.source "ServletContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletContextHandler;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Ljavax/servlet/FilterRegistration$Dynamic;"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 832
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 833
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 835
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 836
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 840
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 841
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 843
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 844
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    return-object p1

    .line 846
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 849
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 850
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 2

    .line 863
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 864
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 866
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 867
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 869
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 870
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 874
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 875
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 878
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    return-object p1

    .line 880
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 883
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 2

    .line 898
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 899
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 901
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 902
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 904
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 905
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 909
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 910
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 912
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 913
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    return-object p1

    .line 916
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 919
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 920
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1217
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1218
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1219
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/Class;)V

    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 1

    .line 1193
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1195
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1196
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1197
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/String;)V

    return-void
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .line 1204
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1206
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1207
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1208
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/util/EventListener;)V

    return-void
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Ljavax/servlet/ServletRegistration$Dynamic;"
        }
    .end annotation

    .line 933
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 936
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 937
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 939
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 944
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 945
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 947
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 948
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    return-object p1

    .line 952
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 954
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 955
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 2

    .line 968
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 971
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 972
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 975
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 976
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 980
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 981
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 984
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    return-object p1

    .line 988
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 990
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public addServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 2

    .line 1004
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1007
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1008
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1010
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 1011
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1014
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 1015
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 1017
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 1018
    iget-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_3

    .line 1024
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 1025
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1051
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/Filter;

    .line 1052
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1054
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1055
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateFilterInstance(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1065
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1061
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1227
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object p1

    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1231
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1232
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateListenerInstance(Ljava/util/EventListener;)Ljava/util/EventListener;

    move-result-object p1
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1242
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1238
    throw p1
.end method

.method public createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .line 1075
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/servlet/Servlet;

    .line 1076
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1078
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1079
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateServletInstance(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    .line 1089
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 1085
    new-instance v0, Ljavax/servlet/ServletException;

    invoke-direct {v0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 1

    .line 1263
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1265
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1266
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1267
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addRoles([Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultSessionTrackingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .line 1096
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getDefaultSessionTrackingModes()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEffectiveSessionTrackingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .line 1104
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getEffectiveSessionTrackingModes()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilterRegistration(Ljava/lang/String;)Ljavax/servlet/FilterRegistration;
    .locals 1

    .line 1112
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1113
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1115
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1116
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/FilterRegistration;",
            ">;"
        }
    .end annotation

    .line 1122
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1125
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1126
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    .line 1127
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1130
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1131
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;
    .locals 1

    .line 1250
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_jspConfig:Ljavax/servlet/descriptor/JspConfigDescriptor;

    return-object v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 3

    .line 813
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 814
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 816
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 817
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 819
    :cond_1
    new-instance v1, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v1, v0, p1}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V

    return-object v1

    :cond_2
    :goto_0
    return-object v2
.end method

.method public getServletRegistration(Ljava/lang/String;)Ljavax/servlet/ServletRegistration;
    .locals 1

    .line 1139
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1140
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1142
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 1143
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/ServletRegistration;",
            ">;"
        }
    .end annotation

    .line 1149
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1152
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1153
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    .line 1154
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1157
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 1158
    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;
    .locals 1

    .line 1167
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1170
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1036
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1039
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1040
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1042
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setJspConfigDescriptor(Ljavax/servlet/descriptor/JspConfigDescriptor;)V
    .locals 1

    .line 1256
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object p1, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_jspConfig:Ljavax/servlet/descriptor/JspConfigDescriptor;

    return-void
.end method

.method public setSessionTrackingModes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;)V"
        }
    .end annotation

    .line 1179
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1181
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1182
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1185
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->setSessionTrackingModes(Ljava/util/Set;)V

    :cond_2
    return-void
.end method
