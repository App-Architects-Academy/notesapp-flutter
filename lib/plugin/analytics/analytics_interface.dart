abstract class AnalyticsInterface {
  abstract final String name;
}

class Analytics {
  List<AnalyticsInterface> _agents;

  Analytics._() : _agents = [];

  void add(AnalyticsInterface newAgent) {
    _agents.add(newAgent);
  }

  void remove(AnalyticsInterface agent) {
    _agents.removeWhere((each) => each.name == agent.name);
  }
}

/*

  Agent specific

  order: cleverTap, some custom data only clevertap

 */
